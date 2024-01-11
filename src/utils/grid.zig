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
    cell_width: f64,
    cell_height: f64,
    width: f64,
    height: f64,

    pub fn introduce(cells: c_int, height: f64, width: f64) Grid {
        const f_cells = @as(f64,@floatFromInt(cells));

        var cellWidth = width / @sqrt(f_cells);
        var cellHeight = height / @sqrt(f_cells);

        const remainingWidth = (width - f_cells * cellWidth) / 2;
        const remainingHeight = (height - f_cells * cellHeight) / 2;

        cellWidth  += remainingWidth  / f_cells;
        cellHeight += remainingHeight / f_cells;
        
        const totalRows = @floor(height / cellHeight);
        const totalColumns = @floor(width / cellWidth);


        return Grid { 
            .cells = cells, 
            .cell_height = cellHeight,
            .cell_width = cellWidth,
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

        const columns_u: usize = @intCast(self.columns);
        const rows_u: usize = @intCast(self.rows);
        
        for (column..columns_u) |col| {
            for (row..rows_u) |rw| {
                try points.append(Point { col , rw });
            }
        }

        return try points.toOwnedSlice();
    }

    pub fn getPositionedGrid(self: Grid, points: []Point) anyerror!xyhw {

        const max_col = @as(f64,@floatFromInt(points[points.len-1][0]));
        const max_row = @as(f64,@floatFromInt(points[points.len-1][1]));
        const min_col = @as(f64,@floatFromInt(points[0][0]));
        const min_row = @as(f64,@floatFromInt(points[0][1]));

        return xyhw {
            .x =  @intFromFloat(min_col * self.cell_width),
            .y =  @intFromFloat(min_row * self.cell_height),
            .height = (max_col + 1.0) * self.cell_height,
            .width =  (max_row + 1.0) * self.cell_width,
        };
    }
};
