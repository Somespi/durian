const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});



pub fn main() anyerror!void {

    const screenWidth = 800;
    const screenHeight = 450;

    rl.InitWindow(screenWidth, screenHeight, "redefine");
    defer rl.CloseWindow(); 

    rl.SetTargetFPS(60);
    
    rl.MaximizeWindow();
    while (!rl.WindowShouldClose()) { 
        
        rl.BeginDrawing();
        defer rl.EndDrawing();

    

    }
}
