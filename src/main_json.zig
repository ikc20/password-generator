const std = @import("std");

pub fn main() void {
    const CHARSET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    const LENGTH = 12;
    
    var password: [LENGTH]u8 = undefined;
    std.crypto.random.bytes(&password);
    
    for (&password) |*c| {
        c.* = CHARSET[c.* % CHARSET.len];
    }

    // Sortie JSON pour intégration facile
    std.debug.print(
        \\{{"password": "{s}", "length": {}, "charset_size": {}}}
    , .{ password, LENGTH, CHARSET.len });
}