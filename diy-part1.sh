#!/bin/bash
#=============================================================
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (����Feed֮ǰ)
# Lisence: kenzo
#=============================================================

# ȡ��ע��Դ
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# ����Զ���Դ
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
