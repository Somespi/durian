const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});
const std = @import("std");
const Arraylist = std.ArrayList;
const Grid = @import("grid.zig").Grid;
const Point = @import("grid.zig").Point;

const LayoutItem = struct {
    widget: rl.Rectangle,
    color: rl.Color,
};

pub const Layout = struct {
    width: c_int,
    height: c_int,
    x: c_int,
    y: c_int,
    background: rl.Color,
    font: rl.Font,
    layoutItems: Arraylist(LayoutItem),
    grid: Grid,

    pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int, background_color: rl.Color) Layout {
        const font = rl.LoadFont("src/resources/poppins.ttf");

        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());
        defer arena.deinit();

        return Layout{ .font = font, .width = width, .height = height, .x = x, .y = y, .background = background_color, .layoutItems = Arraylist(LayoutItem).init(gpa.backing_allocator), .grid = undefined };
    }

    pub fn conclude(self: Layout) void {
        self.layoutItems.deinit();
    }

    pub fn drawRect(self: Layout) void {
        rl.DrawRectangle((self.x), (self.y), (self.width), (self.height), self.background);
    }

    pub fn rectangle(self: Layout) rl.Rectangle {
        _ = self;
        return rl.Rectangle{ .x = 0.0, .y = 0.0, .height = 0.0, .width = 0.0 };
    }

    pub fn packRect(self: *Layout, color: rl.Color, points: []Point) anyerror!usize {
        const positioned_grid = try self.grid.getPositionedGrid(points);
        const copied = rl.Rectangle{
            .x = @floatCast(positioned_grid.x),
            .y = @floatCast(positioned_grid.y),
            .height = @floatCast(positioned_grid.height),
            .width = @floatCast(positioned_grid.width),
        };
        rl.DrawRectangle(@intFromFloat(positioned_grid.x), @intFromFloat(positioned_grid.y), @intFromFloat(copied.width), @intFromFloat(copied.height), color);
        try self.layoutItems.append(LayoutItem{ .widget = copied, .color = color });
        return @intCast(self.layoutItems.items.len - 1);
    }

    pub fn drawBordersFor(self: Layout, index: usize, color: rl.Color, thickness: usize) anyerror!void {
        const widget = self.layoutItems.items[index].widget;
        const thicknessFloat: f32 = @floatFromInt(thickness);

        rl.DrawRectangleLinesEx(rl.Rectangle{
            .x = widget.x - thicknessFloat,
            .y = widget.y - thicknessFloat,
            .width = widget.width +  thicknessFloat,
            .height = widget.height +  thicknessFloat,
        }, thicknessFloat, color);
    }

    pub fn handleResize(self: *Layout, newWidth: c_int, newHeight: c_int) void {
        const widthRatio = @as(f32, @floatFromInt(newWidth)) / @as(f32, @floatFromInt(self.width));
        const heightRatio = @as(f32, @floatFromInt(newHeight)) / @as(f32, @floatFromInt(self.height));

        for (0..self.layoutItems.items.len) |i| {
            var item = &self.layoutItems.items[i];
            item.widget.x = item.widget.x * widthRatio;
            item.widget.y = item.widget.y * heightRatio;
            item.widget.width = item.widget.width * widthRatio;
            item.widget.height = item.widget.height * heightRatio;
        }
        self.width = newWidth;
        self.height = newHeight;
    }

    pub fn setGridSystem(self: *Layout, cells: c_int) void {
        self.grid = Grid.introduce(cells, (self.height), (self.width));
    }

    pub fn drawText(self: Layout, text: [:0]const u8, points: []Point, fontSize: f32, color: rl.Color) anyerror!rl.Rectangle {
        const fontSpacing = 1;
        const position = try self.grid.getPositionedGrid(points);
        rl.SetTextureFilter(self.font.texture, rl.TEXTURE_FILTER_BILINEAR);

        rl.DrawTextEx(self.font, text, rl.Vector2{ .x = position.x, .y = position.y }, fontSize, fontSpacing, color);
        return rl.Rectangle{ .x = position.x, .y = position.y, .width = @floatCast(position.width), .height = @floatCast(position.height) };
    }

    pub fn packText(self: *Layout, rect: rl.Rectangle) anyerror!void {
        try self.layoutItems.append(LayoutItem{ .widget = rect, .color = rl.RED });
        const last_layout = self.layoutItems.items[self.layoutItems.items.len - 1];
        rl.DrawRectangle(@intFromFloat(last_layout.widget.x), @intFromFloat(last_layout.widget.y), @intFromFloat(last_layout.widget.width), @intFromFloat(last_layout.widget.height), last_layout.color);
    }
};
