const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const initLanding = @import("windows/landing.zig").initLanding;

pub fn main() anyerror!void {
    
    rl.SetConfigFlags(rl.FLAG_WINDOW_RESIZABLE);
    rl.InitWindow(800, 400, "durian");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);
    while (!rl.WindowShouldClose()) {
        rl.ClearBackground(rl.GetColor(0x23222300));
        rl.BeginDrawing();
        defer rl.EndDrawing();

        try initLanding();
    }
}
