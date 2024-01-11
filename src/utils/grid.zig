const rl = @cImport(@cInclude("raylib.h"));
const std = @import("std");
const Arraylist = std.ArrayList;
const Tuple = std.meta.Tuple;

pub const Point = Tuple(&.{ usize, usize });
const xyhw = struct {
    x: c_int,
    y: c_int,
    height: f64,
    width: f64
};

pub const Grid = struct {
    cells: c_int,
    approximateCells: c_int,
    columns: c_int,
    rows: c_int,
    cellSideLength: f64,
    width: f64,
    height: f64,

    pub fn introduce(approximateCells: c_int, cellSideLength: f64, height: f64, width: f64) Grid {
        const cells = @as(c_int, @intFromFloat(getCellsNumber(cellSideLength, height, width)));
        const cols = @as(c_int, @intFromFloat(width / cellSideLength));
        return Grid{ 
            .cells = cells, 
            .approximateCells = approximateCells, .
            cellSideLength = cellSideLength, 
            .width = width, 
            .height = height,
            .columns =  @as(c_int, @intFromFloat(width / cellSideLength)),
            .rows = @divFloor(cells, cols)
            };
    }

    fn getCellsNumber(cellSideLength: f64, height: f64, width: f64) f64 {
        return (height * width) / (cellSideLength * cellSideLength);
    }

    pub fn cellsUsize(self: Grid) usize {
        const cells_to_usize: usize = @intCast(self.cells);
        return cells_to_usize;
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
                try points.append(Point { col, rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!xyhw {
        var max_col: f64 = 1.0;
        var max_row: f64 = 1.0;

        for (points) |point| {
            max_col = @floatFromInt(point[0]);
            max_row = @floatFromInt(point[1]);
        }

        return xyhw {
            .x = @as(c_int, @intCast(points[0][0])) + 1,
            .y = @as(c_int, @intCast(points[0][1])) + 1,
            .height = (max_row + 1.0) * self.cellSideLength,
            .width = (max_col + 1.0) * self.cellSideLength,
        };
    }
};
