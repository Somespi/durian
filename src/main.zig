const rl = @import("./utils/c.zig");

const initLanding = @import("windows/landing.zig").initLanding;

pub fn main() anyerror!void {
    rl.SetConfigFlags(rl.FLAG_WINDOW_RESIZABLE);
    rl.SetTraceLogLevel(rl.LOG_NONE);
    rl.InitWindow(800, 400, "durian");
    rl.SetWindowMinSize(800, 400);
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);
    while (!rl.WindowShouldClose()) {
        rl.ClearBackground(rl.GetColor(0x23222300));
        rl.BeginDrawing();
        defer rl.EndDrawing();

        try initLanding();
    }
}
