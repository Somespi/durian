const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const print = @import("std").debug.print;


pub fn initLanding() anyerror!void {
    
    var layout = Layout.introduce(
        rl.GetScreenHeight(),
        rl.GetScreenWidth(), 
        0, 0, 
        rl.GetColor(0xff343400));
    defer layout.conclude();

    layout.setGridSystem(50);
    layout.drawRect();


    try layout.pack(
        layout.rectangle(),
        rl.BLACK,
        try layout.grid.reserveSpace(0, 0, 
        layout.grid.Extend.full
        , 5)
    );

}
