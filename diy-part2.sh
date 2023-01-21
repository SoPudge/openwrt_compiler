#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#delete kcptun-config depend from kcptun and update version to latest, because kcptun-config provided by luci-app-kcptun
#sed -i '/DEPENDS:=+kcptun-config/d' ./package/feeds/packages/kcptun/Makefile
#sed -i 's/PKG_VERSION:=20201010/PKG_VERSION:=20210624/g' ./package/feeds/packages/kcptun/Makefile
#sed -i 's/PKG_SOURCE_DATE:=2020-10-10/PKG_SOURCE_DATE:=2021-06-24/g' ./package/feeds/packages/kcptun/Makefile
#sed -i 's/afab2a087b787e59e129c7d4fbc578e1131d264c0da1ce23cd1282321fc3c189/3f39eb2e6ee597751888b710afc83147b429c232591e91bc97565b32895f33a8/g' ./package/feeds/packages/kcptun/Makefile

#replace the new smartdns commit-id
sed -i 's/a202b765e6ce8355335c80214819add3ed72a82426b033d7d5adf1448b415063/af0303d995c3edfa0ce8d0e90abf6846a8ef1b978e7787965001a0597afc122f/g' ./feeds/packages/net/smartdns/Makefile
sed -i 's/1.2022.38.1/1.2022.40/g' ./feeds/packages/net/smartdns/Makefile
sed -i 's/9bc857f628299573c7eca0833229d9812b1c1de4/fffe4caf088e4f956eeecb9a3a3fd09a79aca6a9/g' ./feeds/packages/net/smartdns/Makefile
#avahi-glib for cups-filters
#sed -i 's/disable-glib/enable-glib/g' ./feeds/packages/libs/avahi/Makefile
