const rl = @import("raylib.zig");
const std = @import("std");
const Arraylist = std.ArrayList;
const Tuple = std.meta.Tuple;
const Grid = @This();

cells: c_int,
columns: c_int,
rows: c_int,
cellWidth: f64,
cellHeight: f64,
width: f64,
height: f64,

pub const Point = Tuple(&.{ usize, usize });
const Rectangle = struct { x: f32, y: f32, height: f64, width: f64 };

pub fn introduce(cells: c_int, i_height: c_int, i_width: c_int) Grid {
    const height: f32 = @floatFromInt(i_height);
    const width: f32 = @floatFromInt(i_width);

    const fCells = @as(f64, @floatFromInt(cells));

    var cellWidth = width / @sqrt(fCells);
    var cellHeight = height / @sqrt(fCells);

    const remainingWidth = (width - (fCells * cellWidth));
    const remainingHeight = (height - (fCells * cellHeight));

    cellWidth += remainingWidth / fCells;
    cellHeight += remainingHeight / fCells;

    return Grid{ .cells = cells, .cellHeight = cellHeight, .cellWidth = cellWidth, .width = width, .height = height, .columns = cells, .rows = cells };
}

pub fn reserveSpace(self: Grid, gpa: std.mem.Allocator, column: usize, row: usize, spanColumn: usize, spanRow: usize) anyerror![]Point {
    var points = Arraylist(Point).init(gpa);

    if ((self.rows < row) or (self.rows < spanRow) or
        (self.columns < column) or (self.columns < spanColumn)) std.debug.panic("Invalid grid dimensions: row, spanRow, column, or spanColumn exceeds grid dimensions.", .{});

    for ((column)..(spanColumn + 1)) |col| {
        for (row..(spanRow + 1)) |rw| {
            try points.append(Point{ col, rw });
        }
    }

    return try points.toOwnedSlice();
}

pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!Rectangle {
    if (!(points.len > 0)) std.debug.panic("No points were registered, failing program", .{});
    const maxCol = @as(f64, @floatFromInt(points[points.len - 1][0]));
    const maxRow = @as(f64, @floatFromInt(points[points.len - 1][1]));
    const minCol = @as(f64, @floatFromInt(points[0][0]));
    const minRow = @as(f64, @floatFromInt(points[0][1]));

    return Rectangle{
        .x = @floatCast(minCol * self.cellWidth),
        .y = @floatCast(minRow * self.cellHeight),
        .height = (maxRow + 1.0) * self.cellHeight,
        .width = (maxCol + 1.0) * self.cellWidth,
    };
}

pub fn griddedWidth(self: Grid, cells: c_int) c_int {
    if (self.columns < cells) std.debug.panic("Cells is more than Columns.\n", .{});
    return (cells * @as(c_int, @intFromFloat(self.cellWidth)));
}

pub fn griddedHeight(self: Grid, cells: c_int) c_int {
    if (self.columns < cells) std.debug.panic("Cells is more than Columns.\n", .{});
    return (cells * @as(c_int, @intFromFloat((self.cellHeight))));
}
