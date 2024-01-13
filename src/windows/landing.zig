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
        composite.griddedWidth(20), 
        0, 0, 
        rl.LIGHTGRAY));
    sidebar.drawRect();

    sidebar.setGridSystem(50);
    var i: u32 = 0;

    try sidebar.packText(try sidebar.drawText(
        "Workspace", 
        try sidebar.grid.reserveSpace(0, 0, 4, 0), 
        32.0, 
        rl.BLACK)
    );

    for (0..@intCast(sidebar.grid.rows-1)) |row| {
        for (0..@intCast(sidebar.grid.columns-1))|col| {
        try sidebar.pack(
            sidebar.rectangle(),
            rl.RED,
            try sidebar.grid.reserveSpace(col,row,0,0)
        );
        i += 1;
    }
    }

}