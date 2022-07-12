#!/bin/bash
 
os_name=$(lsb_release -i --short)
release_num=$(lsb_release -r --short)
code_name=$(lsb_release -c --short)
hw_arch=$(uname -m)

# echo "os_name= $os_name"
# echo "release_num= $release_num"
# echo "code_name= $code_name"
# echo "hardware Architecture = $hw_arch"
echo "系统版本为 $os_name-$release_num $code_name $hw_arch"

a=10
b=20

if [ $os_name = "Ubuntu" ]
then
    echo "系统版本为 $os_name-$release_num $code_name $hw_arch"
elif [ $os_name = "Centos" ]
then
    echo "系统版本为 $os_name-$release_num $code_name $hw_arch"
elif [ $os_name = "Debian" ]
then
    echo "系统版本为 $os_name-$release_num $code_name $hw_arch"
else
   echo "unkonw"
fi