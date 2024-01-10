const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const init_landon = @import("windows/landon.zig").init_landon;

pub fn main() anyerror!void {
    const screenWidth = 800;
    _ = screenWidth;
    const screenHeight = 450;
    _ = screenHeight;

    rl.SetConfigFlags(rl.FLAG_WINDOW_RESIZABLE);
    rl.InitWindow(800, 400, "durian");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);
    while (!rl.WindowShouldClose()) {
        rl.ClearBackground(rl.GetColor(0x23222300));
        rl.BeginDrawing();
        defer rl.EndDrawing();

        try init_landon();
    }
}
