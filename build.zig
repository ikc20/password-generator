const std = @import("std");

pub fn build(b: *std.Build) void {
    const lib = b.addSharedLibrary(.{
        .name = "passwordgen",
        .root_source_file = .{ .path = "src/password_lib.zig" },
        .version = .{ .major = 1, .minor = 0, .patch = 0 },
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    });
    
    b.installArtifact(lib);
}