const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

pub export fn rpu(point: i128, x_or_y: u8) u128 {
    var measure: i128 = if (x_or_y == 1) rl.ScreenWidth() else rl.ScreenHeight();
    return (1/6) * measure * point;

}