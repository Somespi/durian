const rl = @import("raylib.zig");
const std = @import("std");
const Arraylist = std.ArrayList;
const Layout = @import("Layout.zig");
const Grid = @import("Grid.zig");
const Composite = @This();

width: c_int,
height: c_int,
x: c_int,
y: c_int,
layouts: Arraylist(Item),
grid: Grid,

const Item = struct { border: Layout.Border = undefined, color: rl.Color, layout: Layout };

pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int) Composite {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    return Composite{ .width = width, .height = height, .x = x, .y = y, .layouts = Arraylist(Item).init(gpa.allocator()), .grid = undefined };
}

pub fn contain(self: *Composite, layoutRect: Layout.Rectangle) anyerror!*Layout {
    const positionedGrid = try self.grid.getPositionedGrid(try self.grid.reserveSpace(layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow));

    var layout = Layout.introduce(@intFromFloat(positionedGrid.height), @intFromFloat(positionedGrid.width), @intFromFloat(positionedGrid.x), @intFromFloat(positionedGrid.y), layoutRect.color, layoutRect.font);

    layout.setGridSystem(layoutRect.grid);

    try self.layouts.append(Item{ .border = layoutRect.border, .color = layoutRect.color, .layout = layout });
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
