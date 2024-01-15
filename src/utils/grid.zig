const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const std = @import("std");
const Arraylist = std.ArrayList;
const Tuple = std.meta.Tuple;

pub const Point = Tuple(&.{ usize, usize });
const GridRectangle = struct { x: f32, y: f32, height: f64, width: f64 };

pub const Grid = struct {
    cells: c_int,
    columns: c_int,
    rows: c_int,
    cellWidth: f64,
    cellHeight: f64,
    width: f64,
    height: f64,

    pub fn introduce(cells: c_int, i_height: c_int, i_width: c_int) Grid {
        const height: f32 = @floatFromInt(i_height);
        const width: f32 = @floatFromInt(i_width);

        const f_cells = @as(f64, @floatFromInt(cells));

        var cellWidth = width / @sqrt(f_cells); 
        var cellHeight = height / @sqrt(f_cells);

        const remainingWidth = (width - (f_cells * cellWidth));
        const remainingHeight = (height - (f_cells * cellHeight));

        cellWidth += remainingWidth / f_cells;
        cellHeight += remainingHeight / f_cells;

        return Grid{ .cells = cells, .cellHeight = cellHeight, .cellWidth = cellWidth, .width = width, .height = height, .columns = cells, .rows = cells };
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

        for (row..rows_u) |rw| {
            for (column..columns_u) |col| {
                try points.append(Point{ col, rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!GridRectangle {
        const max_col = @as(f64, @floatFromInt(points[points.len - 1][0]));
        const max_row = @as(f64, @floatFromInt(points[points.len - 1][1]));
        const min_col = @as(f64, @floatFromInt(points[0][0]));
        const min_row = @as(f64, @floatFromInt(points[0][1]));

        const fCells: f64 = @floatFromInt(self.cells);
        
        return GridRectangle {
            .x = @floatCast(min_col * self.cellWidth),
            .y = @floatCast(min_row * self.cellHeight),
            .height = (max_col + 1.0) * self.cellHeight / fCells,
            .width = (max_row + 1.0) * self.cellWidth / fCells,
        };
    }
};
