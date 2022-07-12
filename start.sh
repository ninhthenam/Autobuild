git="https://mirror.ghproxy.com/https://github.com/"

echo "开始安装git"
sudo apt update && sudo apt install git vim -y
echo "拉取源码"
git clone ${git}coolsnowwolf/lede.git ~/lede
git clone ${git}jerrykuku/luci-theme-argon ~/lede/package/lean/luci-theme-argon-18.06
git clone ${git}vernesong/OpenClash ~/lede/package/OpenClash
git clone ${git}rufengsuixing/luci-app-adguardhome ~/lede/package/luci-app-adguardhome
echo "更新lede"
cd ~/lede
./scripts/feeds update -a
./scripts/feeds install -a
./scripts/feeds install -a