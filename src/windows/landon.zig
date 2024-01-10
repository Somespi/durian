const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const rpu = @import("../utils/rpu.zig").rpu;


pub export fn init_landon() void {
    rl.DrawText("Select Project", 20, rpu(35, 0), 50, rl.RAYWHITE);
}