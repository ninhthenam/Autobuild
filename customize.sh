device_name='H-Wrt'
wifi_name=$device_name
utc_name='Asia\/Shanghai'


#1. Modify default IP
sed -i 's/192.168.1.1/10.0.1.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

# 命令
echo "修改机器名称"
sed -i "s/OpenWrt/$device_name/g" openwrt/package/base-files/files/bin/config_generate

echo "修改wifi名称"
sed -i "s/OpenWrt/$wifi_name/g" openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

echo "修改时区"
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='$utc_name'/g" openwrt/package/base-files/files/bin/config_generate

# echo "修改默认主题"
# sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci