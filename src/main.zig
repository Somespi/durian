const rl = @import("./utils/c.zig");
const Landing = @import("windows/Landing.zig");
const Composite = @import("./utils/composite.zig").Composite;
pub fn main() anyerror!void {

    rl.SetConfigFlags(rl.FLAG_WINDOW_RESIZABLE);
    rl.SetTraceLogLevel(rl.LOG_NONE);

    rl.InitWindow(800, 400, "Durian");
    defer rl.CloseWindow();

    rl.SetWindowMinSize(800, 400);
    rl.SetTargetFPS(60);
    
    var landing: Composite = try Landing.init();
    defer landing.conclude();

    while (!rl.WindowShouldClose()) {
        rl.ClearBackground(rl.GetColor(0x23222300));
        rl.BeginDrawing();
        defer rl.EndDrawing();

    
        landing.draw();
    }
}
