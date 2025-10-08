const std = @import("std");

pub fn main() void {
    const CHARSET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    const LENGTH = 12;
    
    var password: [LENGTH]u8 = undefined;
    std.crypto.random.bytes(&password);
    
    // Convertir les bytes aléatoires en caractères du charset
    for (&password) |*c| {
        c.* = CHARSET[c.* % CHARSET.len];
    }

    std.debug.print("Mot de passe généré: {s}\n", .{password});
}