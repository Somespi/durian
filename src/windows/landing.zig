const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const print = @import("std").debug.print;

pub fn initLanding() anyerror!void {
    var layout = Layout.introduce( rl.GetScreenHeight(), rl.GetScreenWidth(), 0, 0, rl.GetColor(0xff343400));
    defer layout.conclude();

    layout.setGridSystem(10);
    layout.drawRect();
    layout.handleResize(rl.GetScreenWidth(), rl.GetScreenHeight());

    var i: u32 = 0;
    const col_u: usize = @intCast(layout.grid.columns);
    const row_u: usize = @intCast(layout.grid.rows);

    print("{}, {}\n", .{layout.grid.columns, layout.grid.rows});
    for (0..row_u) |row| {
        for (0..col_u) |col| {


            try layout.pack(
                layout.rectangle(),
                rl.GetColor(0x1A1A1A),
                try layout.grid.reserveSpace(col, row, 0, 0));

            try layout.drawBordersFor(i, rl.BLACK, 3);
            i += 1;
        }
    }



    try layout.drawBordersFor(0, rl.BLACK, 3);

}
