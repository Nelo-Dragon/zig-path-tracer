const std = @import("std");
const vk = @import("vulkan");

pub fn main() !void {

    var epd: vk.instance = undefined;

    var ac: vk.AllowcationCallbacks = undefined;

    var ici: vk.instanceCreateInfo = undefined;

    vk.createInstance(ici, ac, epd);

    var gpu: vk.PhysicalDeviceProperties = undefined;

    vk.GetPhysicalDeviceProperties(epd, gpu);

    std.debug.print(gpu.deviceName[_], .{});
}
