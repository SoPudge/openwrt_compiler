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

git clone https://github.com/kuoruan/luci-app-kcptun.git ./package/luci-app-kcptun
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git ./package/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git ./package/smartdns

#replace the new smartdns commit-id
sed -i 's/0aec326d551925a269a960677f4cd432d8e89385/86902d2e3415666246dae0286262e43923f58532/g' ./package/smartdns/Makefile
sed -i 's/1.2020.30/1.2020.09.08-2235/g' ./package/smartdns/Makefile
