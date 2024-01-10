const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const landon = @import("windows/landon.zig");


pub fn main() anyerror!void {

    const screenWidth = 800;
    _ = screenWidth;
    const screenHeight = 450;
    _ = screenHeight;

    rl.SetConfigFlags(rl.FLAG_WINDOW_RESIZABLE);
    rl.InitWindow(800 , 400 , "redefine");
    defer rl.CloseWindow(); 


    rl.SetTargetFPS(60);
    while (!rl.WindowShouldClose()) { 
        
        rl.ClearBackground(rl.GetColor(0x232223));
        rl.BeginDrawing();
        defer rl.EndDrawing();

        landon.init_landon();

    }
}
