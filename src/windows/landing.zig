const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const Composite = @import("../utils/composite.zig").Composite;
const print = @import("std").debug.print;


pub fn initLanding() anyerror!void {

    const screenHeight = rl.GetScreenHeight();
    const screenWidth  = rl.GetScreenWidth();

    var composite = Composite.introduce(screenHeight, screenWidth, 0, 0);
    defer composite.conclude();
    composite.setGridSystem(50);


    var sidebar = try composite.contain(Layout.introduce(
        composite.griddedHeight(50),
        composite.griddedWidth(10), 
        0, 0, 
        rl.LIGHTGRAY));


    sidebar.setGridSystem(20);
    defer sidebar.conclude();

    var i: u32 = 0;
    const col_u: usize = @intCast(sidebar.grid.columns);
    const row_u: usize = @intCast(sidebar.grid.rows);

    print("{}, {}\n", .{sidebar.grid.columns, sidebar.grid.rows});
    for (0..row_u) |row| {
        for (0..col_u) |col| {


            try sidebar.pack(
                sidebar.rectangle(),
                rl.GetColor(0x1A1A1A),
                try sidebar.grid.reserveSpace(col, row, 0, 0));
            print("col = {},row = {}\n",.{col, row});
            try sidebar.drawBordersFor(i, rl.BLACK, 3);
            i += 1;
        }
    }

}