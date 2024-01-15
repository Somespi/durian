const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const Composite = @import("../utils/composite.zig").Composite;
const print = @import("std").debug.print;

pub fn initLanding() anyerror!void {
    const screenHeight = rl.GetScreenHeight();
    const screenWidth = rl.GetScreenWidth();

    var composite = Composite.introduce(screenHeight, screenWidth, 0, 0);
    defer composite.conclude();
    composite.setGridSystem(50);

    var sidebar = try composite.contain(Layout.introduce(screenHeight, composite.griddedWidth(10), 0, 0, rl.LIGHTGRAY));
    sidebar.setGridSystem(4);

    _ = try sidebar.packText(try sidebar.drawText(
        "Workspace",
        try sidebar.grid.reserveSpace(0, 0, 4, 0),
        32.0,
        rl.BLACK)
    );
}
