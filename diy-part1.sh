#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#git clone https://github.com/kuoruan/luci-app-kcptun.git ./package/luci-app-kcptun
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git ./package/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns.git ./package/smartdns

#replace the new smartdns commit-id
sed -i 's/a6fe329105c7275d4683d17e95ab9d9f93a9c863/f50e4dd0813da9300580f7188e44ed72a27ae79c/g' ./package/feeds/packages/smartdns/Makefile
sed -i 's/1.2020.30/1.2021.08.27-1923/g' ./package/feeds/packages/smartdns/Makefile
sed -i 's/PKG_MIRROR_HASH/#PKG_MIRROR_HASH/g' ./package/feeds/packages/smartdns/Makefile
