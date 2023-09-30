const std = @import("std");

fn printAddressOfForLoop(str: []const u8) void {
    std.debug.print("\nPrinting with a for-loop:\n", .{});
    for (str, 0..) |ch, idx| {
        const ptr = str.ptr + idx;
        std.debug.print("[{*}] {d}: '{c}'\n", .{ ptr, idx, ch });
    }
}

fn printAddressOfWhileLoop(str: []const u8) void {
    std.debug.print("\nPrinting with a while-loop:\n", .{});
    var idx: u8 = 0;
    while (idx < str.len) : (idx += 1) {
        const ch = str[idx];
        const ptr = str.ptr + idx;
        std.debug.print("[{*}] {d}: '{c}'\n", .{ ptr, idx, ch });
    }
}

pub fn main() void {
    const subject = "Ziggers";
    const character_array_literal = [_]u8{ 'I', 'W', 'T', 'C', 'I', 'T', 'S', ' ', '<', '3' };

    std.debug.print("Hello, {s}! {s}\n", .{ subject, character_array_literal });

    printAddressOfForLoop(subject);
    printAddressOfWhileLoop(&character_array_literal);
}
