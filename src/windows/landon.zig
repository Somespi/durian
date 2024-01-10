const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Layout = @import("../utils/layout.zig").Layout;

pub fn init_landon() anyerror!void {
    
    var layout = Layout.introduce(
        rl.GetScreenHeight(), 
        rl.GetScreenWidth(), 
        0, 0,
        rl.GetColor(0xff343400));

    defer layout.conclude();

    layout.drawRect();
    layout.handleResize(rl.GetScreenWidth(), rl.GetScreenHeight());

    try layout.append( 
        rl.Rectangle {.x = 0, .y = 0, .height = @floatFromInt(rl.GetScreenHeight()), .width = 300.0}, 
        rl.GetColor(0x1A1A1A));

    try layout.drawBordersFor(0, rl.BLACK, 3);
}