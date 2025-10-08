const std = @import("std");

export fn generate_password(buffer: [*]u8, buffer_len: usize) void {
    const CHARSET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    
    std.crypto.random.bytes(buffer[0..buffer_len]);
    
    for (buffer[0..buffer_len]) |*c| {
        c.* = CHARSET[c.* % CHARSET.len];
    }
}

export fn get_password_length() usize {
    return 12;
}