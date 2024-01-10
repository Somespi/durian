const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Layout = @import("../utils/layout.zig").Layout;


pub export fn init_landon() void {
    const layout = Layout.introduce(
        rl.GetScreenHeight(), 
        rl.GetScreenWidth(), 
        rl.GetColor(0x00000000));

    defer layout.conclude();

}