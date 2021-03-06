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
sed -i '/DEPENDS:=+kcptun-config/d' ./package/feeds/packages/kcptun/Makefile
sed -i 's/PKG_VERSION:=20201010/PKG_VERSION:=20210624/g' ./package/feeds/packages/kcptun/Makefile
sed -i 's/PKG_SOURCE_DATE:=2020-10-10/PKG_SOURCE_DATE:=2021-06-24/g' ./package/feeds/packages/kcptun/Makefile
sed -i 's/afab2a087b787e59e129c7d4fbc578e1131d264c0da1ce23cd1282321fc3c189/3f39eb2e6ee597751888b710afc83147b429c232591e91bc97565b32895f33a8/g' ./package/feeds/packages/kcptun/Makefile
