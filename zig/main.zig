const std = @import("std");

fn fizz_buzz(alloc: std.mem.Allocator, n: u64) ![]const u8 {
    if (n % 15 == 0) {
        return alloc.dupe(u8, "FizzBuzz");
    } else if (n % 3 == 0) {
        return alloc.dupe(u8, "Fizz");
    } else if (n % 5 == 0) {
        return alloc.dupe(u8, "Buzz");
    } else {
        return std.fmt.allocPrint(alloc, "{}", .{n});
    }
}

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    for (1..101) |i| {
        const result = try fizz_buzz(allocator, i);
        defer allocator.free(result);
        try std.io.getStdOut().writeAll(result);
        try std.io.getStdOut().writeAll("\n");
    }
}
