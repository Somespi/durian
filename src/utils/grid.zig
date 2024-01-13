const rl = @cImport(@cInclude("raylib.h"));
const std = @import("std");
const Arraylist = std.ArrayList;
const Tuple = std.meta.Tuple;

pub const Point = Tuple(&.{ usize, usize });
const xyhw = struct { x: c_int, y: c_int, height: f64, width: f64 };

pub const Grid = struct {
    cells: c_int,
    columns: c_int,
    rows: c_int,
    cellWidth: f64,
    cellHeight: f64,
    width: f64,
    height: f64,

    pub fn introduce(cells: c_int, height: f64, width: f64) Grid {
        const f_cells = @as(f64, @floatFromInt(cells));

        var cellWidth = width / @sqrt(f_cells);
        var cellHeight = height / @sqrt(f_cells);

        const remainingWidth = (width - f_cells * cellWidth);
        const remainingHeight = (height - f_cells * cellHeight);

        cellWidth += remainingWidth / f_cells;
        cellHeight += remainingHeight / f_cells;

        const totalRows = @round(height / cellHeight);
        const totalColumns = @round(width / cellWidth);

        return Grid{ .cells = cells, .cellHeight = cellHeight, .cellWidth = cellWidth, .width = width, .height = height, .columns = @intFromFloat(totalColumns), .rows = @intFromFloat(totalRows) };
    }

    pub fn reserveSpace(self: Grid, column: usize, row: usize, spanColumn: usize, spanRow: usize) anyerror![]Point {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());

        var points = Arraylist(Point).init(arena.allocator());
        defer points.deinit();

        if (!((self.rows >= row) or (self.rows >= spanRow) or
            (self.columns >= column) or (self.columns >= spanColumn))) unreachable;

        const columns_u: usize = @intCast(self.columns);
        const rows_u: usize = @intCast(self.rows);

        for (column..columns_u) |col| {
            for (row..rows_u) |rw| {
                try points.append(Point{ col, rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!xyhw {
        const max_col = @as(f64, @floatFromInt(points[points.len - 1][0]));
        const max_row = @as(f64, @floatFromInt(points[points.len - 1][1]));
        const min_col = @as(f64, @floatFromInt(points[0][0]));
        const min_row = @as(f64, @floatFromInt(points[0][1]));

        return xyhw{
            .x = @intFromFloat(min_col * self.cellWidth),
            .y = @intFromFloat(min_row * self.cellHeight),
            .height = (max_col + 1.0) * self.cellHeight,
            .width = (max_row + 1.0) * self.cellWidth,
        };
    }
};
