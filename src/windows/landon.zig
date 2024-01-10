const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

pub export fn init_landon() void {
    rl.DrawText("Select Project", 100, 50, 40, rl.RAYWHITE);
}