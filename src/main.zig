const std = @import("std");
const vk = @import("vulkan");

pub fn main() !void {

    var gpu: vk.PhysicalDeviceProperties = undefined;

    vk.GetPhysicalDeviceProperties(0, gpu);

    std.debug.print(gpu.deviceName[_], .{});
}
