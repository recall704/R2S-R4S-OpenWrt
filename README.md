# NanoPi-R2S/R4S-OpenWrt
 使用 Github Actions 在线编译 NanoPi-R2S/R4S 固件

![R2S Openwrt](https://github.com/msylgj/R2S-R4S-OpenWrt/workflows/R2S%20Openwrt%20From%20QiuSimons/badge.svg)
![R4S Openwrt](https://github.com/msylgj/R2S-R4S-OpenWrt/workflows/R4S%20Openwrt%20From%20QiuSimons/badge.svg)
## 说明
* Fork自QiuSimons大神的纯原生OP版本,个人根据**完全私人**口味进行了一定修改,建议去源库了解更多
    - [QiuSimons/R2S-R4S-X86-OpenWrt](https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt)
* ipv4: 192.168.2.1
* username: root
* password: 空
* 原汁原味非杂交! 感谢R2S Club及R4S Club/天灵/GC/QC等诸多大佬的努力!
* 添加Flow Offload/SFE(只能二选一,默认开启SFE)+Full Cone Nat+BBR
* 支持scp和sftp
* 无usb-wifi支持.wan&lan交换(r2s)
* 原生OP内置升级可用,固件重置可用
* 支持SSD1306驱动的12864(0.96英寸)和12832(0.91英寸)OLED屏幕(r2s)
* OC-1.6(r2s)/2.2-1.8(r4s)

## 插件清单
- app:argon-config
- app:arpbind
- app:autoreboot
- app:cpufreq
- app:cpulimit
- app:frpc(r2s)
- app:frps(r4s)
- app:oled(r2s)
- app:openclash
- app:ramfree
- app:serverchan
- app:tencentddns
- app:unblockneteasemusic
- app:upnp
- app:vlmcsd
- app:wol-plus
- theme:argon
- theme:bootstrap

## 升级方法
* 原生OP内置升级,可选保留配置
* reset按钮可用(需要fork后自行修改yml编译squashfs格式固件)
* 刷写或升级后遇到任何问题，可以尝试ssh进路由器，输入fuck，回车后等待重启，或可解决(需要fork后自行修改yml编译squashfs格式固件,来自QiuSimons)

## 特别感谢（排名不分先后）
* [QiuSimons/R2S-R4S-X86-OpenWrt](https://github.com/project-openwrt/R2S-OpenWrt)
* [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
* [immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt)
