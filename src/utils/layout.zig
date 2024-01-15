const rl = @import("./c.zig");
const std = @import("std");
const Arraylist = std.ArrayList;
const Grid = @import("grid.zig").Grid;
const Point = @import("grid.zig").Point;

const LayoutStyle = struct {
    zIndex: c_int,
    border: LayoutBorder = undefined
};
const LayoutItem = struct {
    widget: rl.Rectangle,
    color: rl.Color,
    style: LayoutStyle,
    id: usize
};

const LayoutPosition = struct {
    row: usize,
    column: usize,
    spanRow: usize = 0,
    spanCol: usize = 0,
};

const LayoutBorder = struct {
    color: rl.Color, 
    thick: f32 = 1.0,
    raduis: f32 = 0.0,
    segments: c_int = 5
};

const LayoutRect = struct {
    zIndex: c_int = 0,
    border: LayoutBorder = undefined,
    color: rl.Color,
    position: LayoutPosition,
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

    pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int, backgroundColor: rl.Color, fontPath: [:0]const u8) Layout {
        const font = rl.LoadFont(fontPath);

        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());
        defer arena.deinit();

        return Layout{ .font = font, .width = width, .height = height, .x = x, .y = y, .background = backgroundColor, .layoutItems = Arraylist(LayoutItem).init(gpa.backing_allocator), .grid = undefined };
    }

    pub fn draw(self: *Layout) void {
        self.zIndexSort();
        for (self.layoutItems.items) |item| {

            if (item.style.border.raduis > 0.0) {
                rl.DrawRectangleRounded(item.widget, item.style.border.raduis, item.style.border.segments, item.color);
                rl.DrawRectangleRoundedLines(item.widget, item.style.border.raduis, item.style.border.segments, item.style.border.thick, item.style.border.color);
            } else {
                rl.DrawRectangle(
                    @intFromFloat(item.widget.x), 
                    @intFromFloat(item.widget.y), 
                    @intFromFloat(item.widget.width), 
                    @intFromFloat(item.widget.height), 
                    item.color);
                rl.DrawRectangleLinesEx(item.widget, item.style.border.thick, item.color);
            }

        }

    }
    pub fn conclude(self: *Layout) void {
        self.layoutItems.deinit();
    }

    pub fn drawRect(self: Layout) void {
        rl.DrawRectangle((self.x), (self.y), (self.width), (self.height), self.background);
    }


    pub fn packRect(self: *Layout, layoutRect: LayoutRect) anyerror!usize {
        const positionedGrid = try self.grid.getPositionedGrid(try self.grid.reserveSpace(layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow));
        const copied = rl.Rectangle{
            .x = @floatCast(positionedGrid.x),
            .y = @floatCast(positionedGrid.y),
            .height = @floatCast(positionedGrid.height),
            .width = @floatCast(positionedGrid.width),
        };
        try self.layoutItems.append(
            LayoutItem{ 
                .widget = copied, 
                .color = layoutRect.color,
                .style = LayoutStyle{.zIndex = layoutRect.zIndex, .border = layoutRect.border}, 
                .id = self.layoutItems.items.len  
                });
        return @intCast(self.layoutItems.items.len - 1);
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

    pub fn packText(self: *Layout, layoutRect: LayoutRect) anyerror!usize {

        const positionedGrid = try self.grid.getPositionedGrid(try self.grid.reserveSpace(layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow));
        const copied = rl.Rectangle{
            .x = @floatCast(positionedGrid.x),
            .y = @floatCast(positionedGrid.y),
            .height = @floatCast(positionedGrid.height),
            .width = @floatCast(positionedGrid.width),
        };
        
        try self.layoutItems.append(LayoutItem{.id = self.layoutItems.items.len , .widget = copied, .color = rl.BLANK, .style = LayoutStyle{.zIndex = layoutRect.zIndex } });
        const lastLayout = self.layoutItems.items[self.layoutItems.items.len - 1];
        _ = lastLayout;
        return self.layoutItems.items.len - 1;
    }

    fn zIndexSort(self: *Layout) void {
        std.sort.heap(LayoutItem, self.layoutItems.items, {}, Layout.helperSortFn);

    }

    fn helperSortFn(context: void, a: LayoutItem, b: LayoutItem) bool {
        _ = context;
        if (a.style.zIndex < b.style.zIndex) {
            return true;
        } else {
            return false;
        }
    }


};
