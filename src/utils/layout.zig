const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});
const Arraylist = @import("std").ArrayList;

const LayoutItem = struct  {
    widget: rl.Rectangle,
    color: rl.Color,
} ;

pub const Layout = struct {
    width: c_int,
    height: c_int,
    x: c_int,
    y: c_int,
    background: rl.Color,
    layout_items: Arraylist(LayoutItem),

    pub fn introduce(height: c_int, width: c_int, x:c_int, y: c_int, background_color: rl.Color) Layout {
        return Layout{ .width = width, .height = height, .x = x, .y = y, .background = background_color, .layout_items = Arraylist(LayoutItem).init(@import("std").heap.page_allocator) };
    }

    pub fn conclude(self: Layout) void {
        self.layout_items.deinit();
       // for (self.layout_items.items) |widget| self.layout_items.allocator.free(widget);
    }

    pub fn drawRect(self: Layout) void {
        rl.DrawRectangle((self.x),(self.y), (self.width), (self.height), self.background);

    }

    pub fn append(self: *Layout, widget: rl.Rectangle, color: rl.Color) anyerror!void {
        rl.DrawRectangle(@intFromFloat(widget.x),@intFromFloat(widget.y), @intFromFloat(widget.width), @intFromFloat(widget.height), color);
        try self.layout_items.append(LayoutItem{ .widget = widget, .color = color });
    }


    pub fn drawBordersFor(self: Layout, index: u32, color: rl.Color, thickness: c_int) anyerror!void {
        const widget = self.layout_items.items[index].widget;
        rl.DrawRectangleLines(@intFromFloat(widget.x),@intFromFloat(widget.y), @as(c_int, @intFromFloat(widget.width)) + thickness, @as(c_int, @intFromFloat(widget.height)) + thickness, color);

    }

    pub fn handleResize(self: *Layout, newWidth: c_int, newHeight: c_int) void {
        const widthRatio = @as(f32, @floatFromInt(newWidth)) / @as(f32, @floatFromInt(self.width));
        const heightRatio = @as(f32, @floatFromInt(newHeight)) / @as(f32, @floatFromInt(self.height));

        for (0..self.layout_items.items.len) |i| {
            var item = &self.layout_items.items[i];
            item.widget.x = item.widget.x * widthRatio;
            item.widget.y = item.widget.y * heightRatio;
            item.widget.width =  item.widget.width * widthRatio;
            item.widget.height = item.widget.height * heightRatio;
        }
        self.width = newWidth;
        self.height = newHeight;
    }
};
