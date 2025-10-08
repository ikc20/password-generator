const std = @import("std");
const http = std.http;

pub fn main() !void {
    var server = http.Server.init(std.heap.page_allocator, .{});
    defer server.deinit();
    
    try server.listen(std.net.Address.parseIp("127.0.0.1", 8080) catch unreachable);
    
    std.debug.print("Server running on http://127.0.0.1:8080\n", .{});
    
    while (true) {
        var response = try server.accept(.{.allocator = std.heap.page_allocator});
        defer response.deinit();
        
        try response.wait();
        
        const CHARSET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
        const LENGTH = 12;
        
        var password: [LENGTH]u8 = undefined;
        std.crypto.random.bytes(&password);
        
        for (&password) |*c| {
            c.* = CHARSET[c.* % CHARSET.len];
        }
        
        try response.writeAll(
            \\{"password": "
        );
        try response.writeAll(&password);
        try response.writeAll(
            \\", "length": 
        );
        try response.writeAll("12");
        try response.writeAll("}");
        
        try response.finish();
    }
}