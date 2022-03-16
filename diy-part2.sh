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
sed -i 's/a6fe329105c7275d4683d17e95ab9d9f93a9c863/f50e4dd0813da9300580f7188e44ed72a27ae79c/g' ./feeds/packages/net/smartdns/Makefile
sed -i 's/1.2020.30/1.2021.08.27-1923/g' ./feeds/packages/net/smartdns/Makefile
sed -i 's/PKG_MIRROR_HASH/#PKG_MIRROR_HASH/g' ./feeds/packages/net/smartdns/Makefile
#avahi-glib for cups-filters
#sed -i 's/disable-glib/enable-glib/g' ./feeds/packages/libs/avahi/Makefile
