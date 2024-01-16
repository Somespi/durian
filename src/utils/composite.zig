const rl = @import("./c.zig");
const std = @import("std");
const Arraylist = std.ArrayList;
const Layout = @import("./layout.zig").Layout;
const Grid = @import("./grid.zig").Grid;

const LayoutBorder = struct { color: rl.Color, thick: f32 = 5.0, raduis: f32 = 0.0, segments: c_int = 5 };
const LayoutPosition = struct {
    row: usize,
    column: usize,
    spanRow: usize = 0,
    spanCol: usize = 0,
};

const LayoutStyle = struct { zIndex: c_int, border: LayoutBorder = undefined };
const LayoutRect = struct { border: LayoutBorder = undefined, color: rl.Color, position: LayoutPosition, font: [:0]const u8, grid: c_int };

const CompositeItem = struct {
    border: LayoutBorder = undefined, 
    color: rl.Color, 
    layout: Layout
};

pub const Composite = struct {
    width: c_int,
    height: c_int,
    x: c_int,
    y: c_int,
    layouts: Arraylist(CompositeItem),
    grid: Grid,

    pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int) Composite {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());
        defer arena.deinit();

        return Composite{ .width = width, .height = height, .x = x, .y = y, .layouts = Arraylist(CompositeItem).init(gpa.backing_allocator), .grid = undefined };
    }

    pub fn contain(self: *Composite, layoutRect: LayoutRect) anyerror!*Layout {
        const positionedGrid = try self.grid.getPositionedGrid(try self.grid.reserveSpace(layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow));
        var layout = Layout.introduce(@intFromFloat(positionedGrid.height), @intFromFloat(positionedGrid.width), @intFromFloat(positionedGrid.x), @intFromFloat(positionedGrid.y), layoutRect.color, layoutRect.font);
        layout.setGridSystem(layoutRect.grid);
        try self.layouts.append(CompositeItem {.border = layoutRect.border, .color = layoutRect.color, .layout = layout});
        return &self.layouts.items[self.layouts.items.len - 1].layout;
    }

    pub fn setGridSystem(self: *Composite, cells: c_int) void {
        self.grid = Grid.introduce(cells, (self.height), (self.width));
    }

    pub fn conclude(self: Composite) void {
        for (0..self.layouts.items.len) |i| {
            self.layouts.items[i].layout.conclude();
        }
        self.layouts.deinit();
    }

    pub fn draw(self: *Composite) void {
        for (0..self.layouts.items.len) |i| {
            self.layouts.items[i].layout.draw();
        }
    }
};
