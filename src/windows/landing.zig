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

    var composite = Composite.introduce(screenHeight, screenHeight, 0, 0);
    defer composite.conclude();

    var layout = try composite.contain(Layout.introduce(
        screenHeight,
        screenWidth, 
        0, 0, 
        rl.GetColor(0xff343400)));
    
    layout.setGridSystem(50);


    try layout.pack(
        layout.rectangle(),
        rl.BLACK,
        try layout.grid.reserveSpace(0, 0, 
        50
        , 5)
    );

}
