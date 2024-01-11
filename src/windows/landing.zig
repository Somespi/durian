const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Grid   = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;

pub fn initLanding() anyerror!void {
    var layout = Layout.introduce(rl.GetScreenHeight(), rl.GetScreenWidth(), 0, 0, rl.GetColor(0xff343400));
    defer layout.conclude();

    layout.setGridSystem(100.0);
    layout.drawRect();
    layout.handleResize(rl.GetScreenWidth(), rl.GetScreenHeight());

    const rows_usize: usize = @intCast(layout.grid.rows);
    try layout.pack(
        layout.rectangle(),
        rl.GetColor(0x1A1A1A),
        try layout.grid.reserveSpace(0, 0, rows_usize, 4 )
        );

    
    //try layout.drawBordersFor(0, rl.BLACK, 3);


}
