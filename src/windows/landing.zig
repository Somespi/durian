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
    _ = screenHeight;
    const screenWidth = rl.GetScreenWidth();
    _ = screenWidth;
    // var composite = Composite.introduce(screenHeight, screenWidth, 0, 0);
    // defer composite.conclude();
    // composite.setGridSystem(50);

    var sidebar = Layout.introduce(200, 200, 0, 0, rl.LIGHTGRAY);

    defer sidebar.conclude();

    sidebar.drawRect();
    sidebar.setGridSystem(12);

    //var i: u32 = 0;
    // try sidebar.packText(try sidebar.drawText(
    //     "Workspace",
    //     try sidebar.grid.reserveSpace(0, 0, 4, 0),
    //     32.0,
    //     rl.BLACK)
    // );


    for (0..@intCast(sidebar.grid.rows)) |row| {
        for (0..@intCast(sidebar.grid.columns)) |col| {
            const reservedSpace = try sidebar.grid.reserveSpace(col, row, 0, 0);

            var id = try sidebar.packRect(rl.BLANK, reservedSpace);

            try sidebar.drawBordersFor(@intCast(id), rl.BLACK, 1);
        }
    }
}
