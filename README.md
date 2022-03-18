# AutoBuild-OpenWrt-Simple

```
 _    _       __          __     _
| |  | |      \ \        / /    | |  
| |__| | ______\ \  /\  / /_ __ | |_ 
|  __  ||______|\ \/  \/ /| '__|| __|
| |  | |         \  /\  / | |   | |_ 
|_|  |_|          \/  \/  |_|    \__|
```
| 默认登陆IP | 默认账号 | 默认密码 |
| ---------- | -------- | -------- |
| 10.0.1.1   | root     |          |

## 目录结构

```
AutoBuild-OpenWrt-Simple
├─ banner
├─ customize.sh
├─ docs
│  └─ wifi.txt
├─ logs
│  ├─ x86_64.md
│  ├─ xiaomi_ac2100.md
│  └─ xiaomi_r3g.md
├─ README.md
├─ workflows_bak_1
│  ├─ Build_OP_x86_64.yml
│  ├─ Build_OP_xiaomi_ac2100.yml
│  └─ Build_OP_xiaomi_r3g.yml
├─ workflows_bak_2
│  ├─ Build_OP_k2_def.yml
│  ├─ Build_OP_x86_64.yml
│  ├─ Build_OP_x86_64_def 测试缓存.yml
│  ├─ Build_OP_x86_64_def.yml
│  ├─ Build_OP_xiaomi_ac2100.yml
│  ├─ Build_OP_xiaomi_ac2100_def.yml
│  ├─ Build_OP_xiaomi_r3g.yml
│  └─ Build_OP_xiaomi_r3g_def.yml
├─ x86_64.config
├─ x86_64_def.config
├─ xiaomi_ac2100.config
├─ xiaomi_ac2100_def.config
├─ xiaomi_r3g.config
└─ xiaomi_r3g_def.config

```

## 感谢

- [大雕 源码仓库](https://github.com/coolsnowwolf/lede.git) ©coolsnowwolf
- [esir 自动编译](https://github.com/esirplayground/AutoBuild-OpenWrt.git) ©esirplayground
- [OpenClash 源码](https://github.com/vernesong/OpenClash.git)  © vernesong
- [adguardhome 源码](https://github.com/rufengsuixing/luci-app-adguardhome.git) ©rufengsuixing
- [luci-theme-argon 源码](https://github.com/jerrykuku/luci-theme-argon.git) ©jerrykuku
- [缓存加速编译](https://github.com/klever1988/cachewrtbuild) ©klever1988
