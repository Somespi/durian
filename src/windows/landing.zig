const rl = @import("../utils/c.zig");

const Grid = @import("../utils/grid.zig").Grid;
const Layout = @import("../utils/layout.zig").Layout;
const Composite = @import("../utils/composite.zig").Composite;

pub fn initLanding() anyerror!void {
    const screenHeight = rl.GetScreenHeight();
    const screenWidth = rl.GetScreenWidth();

    var composite = Composite.introduce(screenHeight, screenWidth, 0, 0);
    defer composite.conclude();
    composite.setGridSystem(50);

    var sidebar = try composite.contain(Layout.introduce(
        screenHeight,
        composite.grid.griddedWidth(10),
        0, 
        0, 
        rl.LIGHTGRAY, 
    "src/resources/poppins.ttf"));
    sidebar.setGridSystem(20);

    
    _ = try sidebar.pack(.{ 
        .text = .{
            .content = "Hello, World!",
            .size = 30,
        },
        .zIndex = 3, 
        .color = rl.BLANK, 
        .position = .{
            .row = 3,
            .column = 3,
            .spanCol = 10,
            .spanRow = 10
        },
        .border = .{
            .color = rl.BLUE,
            .thick = 5,
        }
    });

    sidebar.draw();
}
