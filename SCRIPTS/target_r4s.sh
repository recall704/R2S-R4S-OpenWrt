#!/bin/bash
clear

#使用特定的优化
sed -i 's,-mcpu=generic,-march=armv8-a+crypto+crc -mcpu=cortex-a72.cortex-a53+crypto+crc -mtune=cortex-a72.cortex-a53,g' include/target.mk

#IRQ
sed -i '/set_interface_core 20 "eth1"/a\set_interface_core 8 "ff3c0000" "ff3c0000.i2c"' target/linux/rockchip/armv8/base-files/etc/hotplug.d/net/40-net-smp-affinity
sed -i '/set_interface_core 20 "eth1"/a\ethtool -C eth0 rx-usecs 1000 rx-frames 25 tx-usecs 100 tx-frames 25' target/linux/rockchip/armv8/base-files/etc/hotplug.d/net/40-net-smp-affinity

#翻译及部分功能优化
svn co https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt/trunk/PATCH/duplicate/addition-trans-zh package/lean/lean-translate
sed -i '/chinadnslist/d' package/lean/lean-translate/files/zzz-default-settings
sed -i '/MosChinaDNS/d' package/lean/lean-translate/files/zzz-default-settings

#预配置一些插件
wget -P files/etc/config/ https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt/raw/master/PATCH/R4S/files/etc/config/cpufreq
wget -P files/etc/config/ https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt/raw/master/PATCH/R4S/files/etc/config/cpulimit

exit 0