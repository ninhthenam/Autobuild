echo "更改默认IP，测试可用"
sed -i 's/192.168.1.1/10.0.1.1/g' openwrt/package/base-files/files/bin/config_generate

echo "清楚登陆密码，测试可用"
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

device_name='H-Wrt，测试可用'
echo "修改机器名称"
sed -i "s/OpenWrt/$device_name/g" openwrt/package/base-files/files/bin/config_generate

wifi_name=$device_name
echo "修改wifi名称，未测试"
sed -i "s/OpenWrt/$wifi_name/g" openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

