const Arraylist = @import("std").ArrayList;
const rl = @cImport(@cInclude("raylib.h"));
const std = @import("std");
const Tuple = std.meta.Tuple;
const Point = Tuple(&.{ usize, usize });


pub const Grid = struct {
    cells: c_int,
    approximateCells: c_int,
    cellSideLength: f64,
    width: f64,
    height: f64,

    pub fn introduce(approximateCells: c_int, cellSideLength: f64, height: f64, width: f64) Grid {
        const cells = @as(c_int, @intFromFloat(getCellsNumber(cellSideLength, height, width)));

        return Grid{ .cells = cells, .approximateCells = approximateCells, .cellSideLength = cellSideLength, .width = width, .height = height };
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


        const columnsTotal = @as(c_int, @intFromFloat(self.width / self.cellSideLength));
        const rowsTotal = @divFloor(self.cells, columnsTotal);

        if (!((rowsTotal >= row) or (rowsTotal >= spanRow) or
            (columnsTotal >= column) or (columnsTotal >= spanColumn))) unreachable;

        for (column..spanColumn) |col| {
            for (row..spanRow) |rw| {
                try points.append(Point { col, rw });
            }
        }

        return try points.toOwnedSlice();
    }
};
