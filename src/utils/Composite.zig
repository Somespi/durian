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
gpa: std.mem.Allocator,

const Rectangle = struct { border: Layout.Border = undefined, color: rl.Color, position: Layout.Position, font: [:0]const u8, grid: c_int };
const Item = struct { border: Layout.Border = undefined, color: rl.Color, layout: Layout };

pub fn introduce(gpa: std.mem.Allocator, height: c_int, width: c_int, x: c_int, y: c_int) Composite {
    return Composite{ .width = width, .height = height, .x = x, .y = y, .layouts = Arraylist(Item).init(gpa), .grid = undefined, .gpa = gpa };
}

pub fn contain(self: *Composite, layoutRect: Rectangle) anyerror!*Layout {
    var points = try self.grid.reserveSpace(self.gpa, layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow);
    defer self.gpa.free(points);

    const positionedGrid = try self.grid.getPositionedGrid(points);

    var layout = Layout.introduce(self.gpa, @intFromFloat(positionedGrid.height), @intFromFloat(positionedGrid.width), @intFromFloat(positionedGrid.x), @intFromFloat(positionedGrid.y), layoutRect.color, layoutRect.font);

    layout.setGridSystem(layoutRect.grid);

    try self.layouts.append(.{ .border = layoutRect.border, .color = layoutRect.color, .layout = layout });

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
        const widget = rl.Rectangle{
            .x = @floatFromInt(self.layouts.items[i].layout.x),
            .y = @floatFromInt(self.layouts.items[i].layout.y),
            .height = @floatFromInt(self.layouts.items[i].layout.height),
            .width = @floatFromInt(self.layouts.items[i].layout.width),
        };
        if (self.layouts.items[i].border.raduis > 0.0) {
            rl.DrawRectangleRounded(widget, self.layouts.items[i].border.raduis, self.layouts.items[i].border.segments, self.layouts.items[i].color);
            rl.DrawRectangleRoundedLines(widget, self.layouts.items[i].border.raduis, self.layouts.items[i].border.segments, self.layouts.items[i].border.thick, self.layouts.items[i].border.color);
        } else {
            rl.DrawRectangle(@intFromFloat(widget.x), @intFromFloat(widget.y), @intFromFloat(widget.width), @intFromFloat(widget.height), self.layouts.items[i].color);
            rl.DrawRectangleLinesEx(rl.Rectangle{
                .x = widget.x - self.layouts.items[i].border.thick,
                .y = widget.y - self.layouts.items[i].border.thick,
                .width = widget.width + 2 * self.layouts.items[i].border.thick,
                .height = widget.height + 2 * self.layouts.items[i].border.thick,
            }, self.layouts.items[i].border.thick, self.layouts.items[i].border.color);
        }
        self.layouts.items[i].layout.draw();
    }
}
