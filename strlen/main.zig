const std = @import("std");

// https://ziglang.org/documentation/master/#toc-Sentinel-Terminated-Pointers
fn strlen(str: [*:0]const u8) u8 {
    var length: u8 = 0;

    while (str[length] != 0) {
        length += 1;
    }
    return length;
}

pub fn main() void {
    var str = "Hello World!";
    var length = strlen(str);
    std.debug.print("length: {}\n", .{length});
}