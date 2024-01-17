const std = @import("std");
const rl = @import("../utils/raylib.zig");
const Grid = @import("../utils/Grid.zig");
const Layout = @import("../utils/Layout.zig");
const Composite = @import("../utils/Composite.zig");

pub fn init(gpa: std.mem.Allocator) anyerror!Composite {
    const screenHeight = rl.GetScreenHeight();
    const screenWidth = rl.GetScreenWidth();

    var composite = Composite.introduce(gpa, screenHeight, screenWidth, 0, 0);
    _ = try composite.setGridSystem(50);

    var sidebar = try composite.contain(.{ 
        .color = rl.GetColor(0x001A1A1A), 
        .font = "src/resources/poppins.ttf", 
        .border = .{
            .color = rl.BLACK,
            .thick = 3,
            },
        .position = .{ .row = 5, .column = 0, .spanCol = 8, .spanRow = 44 }, 
        .grid = 20 
        });
    _ = sidebar;


    var header = try composite.contain(.{ 
        .color = rl.GetColor(0x001A1A1A), 
        .font = "src/resources/poppins.ttf", 
        .border = .{
            .color = rl.BLACK,
            .thick = 3,
            },
        .position = .{ .row = 0, .column = 0, .spanCol = 49, .spanRow = 4 }, 
        .grid = 20 
        });
    _ = header;

   
    return composite;
}
