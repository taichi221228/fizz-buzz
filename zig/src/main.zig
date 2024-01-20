const std = @import("std");

fn fizz_buzz(allocator: std.mem.Allocator, n: u64) ![]const u8 {
    if (n % 3 == 0 and n % 5 == 0) {
        return allocator.dupe(u8, "FizzBuzz");
    } else if (n % 3 == 0) {
        return allocator.dupe(u8, "Fizz");
    } else if (n % 5 == 0) {
        return allocator.dupe(u8, "Buzz");
    } else {
        return std.fmt.allocPrint(allocator, "{}", .{n});
    }
}

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    for (0..100) |i| {
        var n = i + 1;

        const result = try fizz_buzz(allocator, n);
        defer allocator.free(result);
        try std.io.getStdOut().writeAll(result);
        try std.io.getStdOut().writeAll("\n");
    }
}