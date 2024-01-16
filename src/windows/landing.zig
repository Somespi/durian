const rl = @import("../utils/c.zig");

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const Composite = @import("../utils/composite.zig").Composite;

pub fn init() anyerror!Composite {
    const screenHeight = rl.GetScreenHeight();
    const screenWidth = rl.GetScreenWidth();

    var composite = Composite.introduce(screenHeight, screenWidth, 0, 0);
    composite.setGridSystem(50);

    var sidebar: *Layout = try composite.contain(.{
        .color = rl.GetColor(0x001A1A1A),
        .font = "src/resources/poppins.ttf",
        .border = .{
            .color = rl.BLACK,
            .thick = 5,
        },
        .position = .{
            .row =  0,
            .column = 0,
            .spanCol = 10,
            .spanRow = 50
        },
        .grid = 20
    });
    
    _ = try sidebar.pack(.{
        .position = .{
            .column = 0,
            .row = 0,
        },
        .color = rl.RED
    });

    
    return composite;
}

