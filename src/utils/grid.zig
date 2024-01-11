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
    columns: c_int,
    rows: c_int,
    cellWidth: f64,
    cellHeight: f64,
    width: f64,
    height: f64,

    pub fn introduce(cells: c_int, height: f64, width: f64) Grid {
        const fCells = @as(f64,@floatFromInt(cells));

        var cellWidth = width / @sqrt(fCells);
        var cellHeight = height / @sqrt(fCells);

        const remainingWidth = (width - fCells * cellWidth);
        const remainingHeight = (height - fCells * cellHeight);

        cellWidth  += remainingWidth  / fCells ;
        cellHeight += remainingHeight / fCells ;
        
        const totalRows = @round(height / cellHeight);
        const totalColumns = @round(width / cellWidth);

        

        return Grid { 
            .cells = cells, 
            .cellHeight = cellHeight,
            .cellWidth = cellWidth,
            .width = width, 
            .height = height,
            .columns = @intFromFloat(totalColumns),
            .rows = @intFromFloat(totalRows)
            };
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
        
        for (column..columnsU) |col| {
            for (row..rowsU) |rw| {
                try points.append(Point { col , rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!xyhw {

        const maxCol = @as(f64,@floatFromInt(points[points.len-1][0]));
        const maxRow = @as(f64,@floatFromInt(points[points.len-1][1]));
        const minCol = @as(f64,@floatFromInt(points[0][0]));
        const minRow = @as(f64,@floatFromInt(points[0][1]));

        return xyhw {
            .x =  @intFromFloat(minCol * self.cellWidth),
            .y =  @intFromFloat(minRow * self.cellHeight),
            .height = (maxCol + 1.0) * self.cellHeight,
            .width =  (maxRow + 1.0) * self.cellWidth,
        };
    }
};
