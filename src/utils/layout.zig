const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});
const Arraylist = @import("std").ArrayList;

const LayoutItem = struct {
    x: c_int,
    y: c_int,
    widget: rl.Widget,
};

export const Layout = struct {

    width: i128,
    height: i128, 
    background: rl.Color,
    layout_items: Arraylist(LayoutItem),

    pub fn introduce(height: i128, width: i128, background_color: rl.Color) Layout {
        return Layout {
            .width = width,
            .height = height,
            .background = background_color,
            .layout_items = Arraylist(LayoutItem).init(@import("std").heap.page_allocator)
        };
    }

    pub fn concluse(self: Layout) void {
        self.layout_items.deinit();
        for (self.layout_items.items) |widget| self.layout_items.allocator.free(widget);
    }

    pub fn append(self: Layout, x: c_int, y: c_int, widget: rl.Widget) void {
        self.layout_items.append(
            LayoutItem {
                .x = x,
                .y = y,
                .widget = widget
            }
        );
    }
};
