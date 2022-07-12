sudo touch /etc/profile.d/proxy.sh

ip="192.168.239.1"
port="7890"

sudo echo "export http_proxy=\"http://${ip}:${port}/"\" > /etc/profile.d/proxy.sh
sudo echo "export https_proxy=\"http://${ip}:${port}/"\" >> /etc/profile.d/proxy.sh
sudo echo "export ftp_proxy=\"http://${ip}:${port}/"\" >> /etc/profile.d/proxy.sh
sudo echo "export no_proxy=\"localhost;127.*;10.*;172.16.*;172.17.*;172.18.*;172.19.*;172.20.*;172.21.*;172.22.*;172.23.*;172.24.*;172.25.*;172.26.*;172.27."\" >> /etc/profile.d/proxy.sh
sudo echo "export HTTP_PROXY=\"http://${ip}:${port}/"\" >> /etc/profile.d/proxy.sh
sudo echo "export HTTPS_PROXY=\"http://${ip}:${port}/"\" >> /etc/profile.d/proxy.sh
sudo echo "export FTP_PROXY=\"http://${ip}:${port}/"\" >> /etc/profile.d/proxy.sh
sudo echo "export NO_PROXY=\"localhost;127.*;10.*;172.16.*;172.17.*;172.18.*;172.19.*;172.20.*;172.21.*;172.22.*;172.23.*;172.24.*;172.25.*;172.26.*;172.27."\" >> /etc/profile.d/proxy.sh
sudo chmod +x  /etc/profile.d/proxy.sh
source /etc/profile.d/proxy.sh
env | grep -i proxy