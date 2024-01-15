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

        const fCells = @as(f64, @floatFromInt(cells));

        var cellWidth = width / @sqrt(fCells); 
        var cellHeight = height / @sqrt(fCells);

        const remainingWidth = (width - (fCells * cellWidth));
        const remainingHeight = (height - (fCells * cellHeight));

        cellWidth += remainingWidth / fCells;
        cellHeight += remainingHeight / fCells;

        return Grid{ .cells = cells, .cellHeight = cellHeight, .cellWidth = cellWidth, .width = width, .height = height, .columns = cells, .rows = cells };
    }

    pub fn reserveSpace(self: Grid, column: usize, row: usize, spanColumn: usize, spanRow: usize) anyerror![]Point {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        var arena = std.heap.ArenaAllocator.init(gpa.allocator());

        var points = Arraylist(Point).init(arena.allocator());
        defer points.deinit();

        if (!((self.rows >= row) or (self.rows >= spanRow) or
            (self.columns >= column) or (self.columns >= spanColumn))) unreachable;

        const columnsU: usize = @intCast(self.columns);
        const rowsU: usize = @intCast(self.rows);

        for (row..rowsU) |rw| {
            for (column..columnsU) |col| {
                try points.append(Point{ col, rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!GridRectangle {
        const maxCol = @as(f64, @floatFromInt(points[points.len - 1][0]));
        const maxRow = @as(f64, @floatFromInt(points[points.len - 1][1]));
        const minCol = @as(f64, @floatFromInt(points[0][0]));
        const minRow = @as(f64, @floatFromInt(points[0][1]));

        const fCells: f64 = @floatFromInt(self.cells);

        return GridRectangle {
            .x = @floatCast(minCol * self.cellWidth),
            .y = @floatCast(minRow * self.cellHeight),
            .height = (maxCol + 1.0) * self.cellHeight / fCells,
            .width = (maxRow + 1.0) * self.cellWidth / fCells,
        };
    }
};
