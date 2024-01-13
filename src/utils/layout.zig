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
    layoutItems: Arraylist(LayoutItem),
    grid: Grid,

    pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int, background_color: rl.Color) Layout {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());
        defer arena.deinit();

        return Layout{ .width = width, .height = height, .x = x, .y = y, .background = background_color, .layoutItems = Arraylist(LayoutItem).init(gpa.backing_allocator), .grid = undefined };
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

    pub fn pack(self: *Layout, widget: rl.Rectangle, color: rl.Color, points: []Point) anyerror!void {
        _ = widget;
        const positioned_grid = try self.grid.getPositionedGrid(points);
        const copied = rl.Rectangle{
            .x = @floatFromInt(positioned_grid.x),
            .y = @floatFromInt(positioned_grid.y),
            .height = @floatCast(positioned_grid.height),
            .width = @floatCast(positioned_grid.width),
        };

        rl.DrawRectangle(positioned_grid.x, positioned_grid.y, @intFromFloat(copied.width), @intFromFloat(copied.height), color);
        try self.layoutItems.append(LayoutItem{ .widget = copied, .color = color });
    }

    pub fn drawBordersFor(self: Layout, index: usize, color: rl.Color, thickness: usize) anyerror!void {
        const widget = self.layoutItems.items[index].widget;
        for (0..(thickness)) |thick| {
            const current_thickness: c_int = @intCast(thick);
            rl.DrawRectangleLines(@intFromFloat(widget.x), @intFromFloat(widget.y), @as(c_int, @intFromFloat(widget.width)) + current_thickness, @as(c_int, @intFromFloat(widget.height)) + current_thickness, color);
        }
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
        self.grid = Grid.introduce(cells, @floatFromInt(self.height), @floatFromInt(self.width));
    }
};
