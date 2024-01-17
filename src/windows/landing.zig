const std = @import("std");
const rl = @import("../utils/raylib.zig");
const Grid = @import("../utils/Grid.zig");
const Layout = @import("../utils/Layout.zig");
const Composite = @import("../utils/Composite.zig");

pub fn init(gpa: std.mem.Allocator) anyerror!Composite {
    const screenHeight = rl.GetScreenHeight();
    const screenWidth = rl.GetScreenWidth();

    var composite = Composite.introduce(gpa, screenHeight, screenWidth, 0, 0);
    composite.setGridSystem(50);

    var sidebar = try composite.contain(.{ .color = rl.GetColor(0x001A1A1A), .font = "src/resources/poppins.ttf", .border = .{
        .color = rl.BLACK,
        .thick = 5,
    }, .position = .{ .row = 0, .column = 0, .spanCol = 10, .spanRow = 50 }, .grid = 20 });

    _ = try sidebar.pack(.{ .position = .{
        .column = 0,
        .row = 0,
    }, .color = rl.RED });

    return composite;
}
