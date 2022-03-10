echo "更改默认IP"
sed -i 's/192.168.1.1/10.0.1.1/g' openwrt/package/base-files/files/bin/config_generate

echo "清楚登陆密码"
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

device_name='H-Wrt'
echo "修改机器名称"
sed -i "s/OpenWrt/$device_name/g" openwrt/package/base-files/files/bin/config_generate

wifi_name=$device_name
echo "修改wifi名称"
sed -i "s/OpenWrt/$wifi_name/g" openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

default_theme='argon'
echo "修改默认主题"
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
