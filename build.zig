const std = @import("std");

pub fn build(b: *std.Build) void {
    // Bibliothèque partagée
    const lib = b.addSharedLibrary("passwordgen", null);
    lib.addSourceFile("src/password_lib.zig");
    lib.setOutputDir("lib");
    lib.setBuildMode(.ReleaseSafe);
    
    // Exécutable JSON
    const exe_json = b.addExecutable("main_json", null);
    exe_json.addSourceFile("src/main_json.zig");
    exe_json.setOutputDir("bin");
    exe_json.setBuildMode(.ReleaseSafe);
    
    // Exécutable principal
    const exe_main = b.addExecutable("password-generator", null);
    exe_main.addSourceFile("src/main.zig");
    exe_main.setOutputDir("bin");
    exe_main.setBuildMode(.ReleaseSafe);
    
    b.default_step.dependOn(&lib.step);
    b.default_step.dependOn(&exe_json.step);
    b.default_step.dependOn(&exe_main.step);
}