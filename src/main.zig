const std = @import("std");
const vk = @import("vulkan");

pub fn main() !void {

    var ac: vk.AllowcationCallbacks = undefined;

    var ici: vk.InstanceCreateInfo = undefined;

    var epd: vk.Instance = vk.createInstance(ici, ac, epd);

    var gpu: vk.PhysicalDeviceProperties = vk.GetPhysicalDeviceProperties(epd, gpu);

    std.debug.print(gpu.deviceName[_], .{});
}
