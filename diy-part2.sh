#!/bin/bash
#============================================================
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (����feeds��)
# Lisence: kenzo
#============================================================

�Զ���ip
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

�Զ���������
rm -rf feeds/litte/luci-app-ssr-plus
rm -rf feeds/litte/microsocks && rm -rf feeds/litte/redsocks2 && rm -rf feeds/litte/tcpping
cp -f feeds/litte/default-settings package/lean/default-settings/files/zzz-default-settings
cp -f feeds/litte/banner package/base-files/files/etc/banner
cp -f feeds/litte/Leandiffconfig .config && make defconfig
./scripts/feeds update -a
./scripts/feeds install -a