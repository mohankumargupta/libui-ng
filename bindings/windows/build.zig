const std = @import("std");

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    // We can define the specific Windows x86_64 target once and reuse it
    const windows_target = b.resolveTargetQuery(.{ .cpu_arch = .x86_64, .os_tag = .windows });

    // 1 & 2. Define the translation step and link libc (Equivalent of '-lc')
    const translate_c = b.addTranslateC(.{
        .root_source_file = b.path("ui.h"),
        .target = windows_target,
        .optimize = optimize,
        .link_libc = true, // <--- Replaces translate_c.linkLibC()
    });

    const install_file = b.addInstallFile(translate_c.getOutput(), "ui.zig");
    b.getInstallStep().dependOn(&install_file.step);
}
