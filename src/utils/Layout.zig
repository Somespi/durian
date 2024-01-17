const rl = @import("raylib.zig");
const std = @import("std");
const Grid = @import("Grid.zig");
const Arraylist = std.ArrayList;
const Layout = @This();

width: c_int,
height: c_int,
x: c_int,
y: c_int,
background: rl.Color,
font: rl.Font,
layoutItems: Arraylist(Item),
grid: Grid,

const Content = struct { content: [:0]const u8, size: f32 = 16.0, spacing: f32 = 1.0, color: rl.Color = rl.BLACK };
const Border = struct { color: rl.Color, thick: f32 = 5.0, raduis: f32 = 0.0, segments: c_int = 5 };
const Position = struct {
    row: usize,
    column: usize,
    spanRow: usize = 0,
    spanCol: usize = 0,
};
const Style = struct { zIndex: c_int, border: Border = undefined };
const Rectangle = struct { text: Content = undefined, zIndex: c_int = 0, border: Border = undefined, color: rl.Color, position: Position, id: isize = -1 };

const Item = struct { widget: rl.Rectangle, text: Content = undefined, color: rl.Color, style: Style, id: usize };

pub fn introduce(height: c_int, width: c_int, x: c_int, y: c_int, backgroundColor: rl.Color, fontPath: [:0]const u8) Layout {
    const font = rl.LoadFont(fontPath);

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var arena = std.heap.ArenaAllocator.init(gpa.allocator());
    defer arena.deinit();

    return Layout{ .font = font, .width = width, .height = height, .x = x, .y = y, .background = backgroundColor, .layoutItems = Arraylist(Item).init(gpa.backing_allocator), .grid = undefined };
}

pub fn draw(self: *Layout) void {
    self.zIndexSort();
    rl.SetTextureFilter(self.font.texture, rl.TEXTURE_FILTER_BILINEAR);
    for (self.layoutItems.items) |item| {
        if (item.style.border.raduis > 0.0) {
            rl.DrawRectangleRounded(item.widget, item.style.border.raduis, item.style.border.segments, item.color);
            rl.DrawRectangleRoundedLines(item.widget, item.style.border.raduis, item.style.border.segments, item.style.border.thick, item.style.border.color);
        } else {
            rl.DrawRectangle(@intFromFloat(item.widget.x), @intFromFloat(item.widget.y), @intFromFloat(item.widget.width), @intFromFloat(item.widget.height), item.color);
            rl.DrawRectangleLinesEx(rl.Rectangle{
                .x = item.widget.x - item.style.border.thick,
                .y = item.widget.y - item.style.border.thick,
                .width = item.widget.width + 2 * item.style.border.thick,
                .height = item.widget.height + 2 * item.style.border.thick,
            }, item.style.border.thick, item.style.border.color);
        }

        rl.DrawTextEx(self.font, item.text.content, rl.Vector2{ .x = item.widget.width / 2.0, .y = item.widget.y + item.widget.height / 2.0 }, item.text.size, item.text.spacing, item.text.color);
    }
}

pub fn conclude(self: *Layout) void {
    self.layoutItems.deinit();
}

pub fn drawRect(self: Layout) void {
    rl.DrawRectangle((self.x), (self.y), (self.width), (self.height), self.background);
}

pub fn pack(self: *Layout, layoutRect: Rectangle) anyerror!void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    const points = try self.grid.reserveSpace(gpa.allocator(), layoutRect.position.column, layoutRect.position.row, layoutRect.position.spanCol, layoutRect.position.spanRow);
    defer gpa.allocator().free(&points);

    const positionedGrid = try self.grid.getPositionedGrid(points);

    const copied = rl.Rectangle{
        .x = @floatCast(positionedGrid.x),
        .y = @floatCast(positionedGrid.y),
        .height = @floatCast(positionedGrid.height),
        .width = @floatCast(positionedGrid.width),
    };

    const id: usize = if (layoutRect.id != -1) @intCast(layoutRect.id) else self.layoutItems.items.len;

    try self.layoutItems.append(Item{ .widget = copied, .color = layoutRect.color, .style = Style{ .zIndex = layoutRect.zIndex, .border = layoutRect.border }, .text = layoutRect.text, .id = id });
}

pub fn setGridSystem(self: *Layout, cells: c_int) void {
    self.grid = Grid.introduce(cells, (self.height), (self.width));
}

fn zIndexSort(self: *Layout) void {
    std.sort.heap(Item, self.layoutItems.items, {}, .helperSortFn);
}

fn helperSortFn(context: void, a: Item, b: Item) bool {
    _ = context;
    if (a.style.zIndex > b.style.zIndex) {
        return true;
    } else {
        return false;
    }
}
