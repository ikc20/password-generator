const std = @import("std");

test "password generation" {
    const CHARSET = "abc123";
    const LENGTH = 10;
    
    var password: [LENGTH]u8 = undefined;
    std.crypto.random.bytes(&password);
    
    for (&password) |*c| {
        c.* = CHARSET[c.* % CHARSET.len];
    }
    
    try std.testing.expect(password.len == LENGTH);
}

test "password characters validation" {
    const CHARSET = "ABC";
    const LENGTH = 5;
    
    var password: [LENGTH]u8 = undefined;
    std.crypto.random.bytes(&password);
    
    for (&password) |*c| {
        c.* = CHARSET[c.* % CHARSET.len];
    }
    
    for (password) |c| {
        var valid = false;
        for (CHARSET) |ch| {
            if (c == ch) {
                valid = true;
                break;
            }
        }
        try std.testing.expect(valid);
    }
}
