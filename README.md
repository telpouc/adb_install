# adb_install for Windows
支持安装包含 install.sh 的zip包到ADB设备

## 下载
https://github.com/telpouc/adb_install/archive/1.0.1.zip

## 使用
* 请使用数据线连接设备，暂不支持网络连接和同时连接多个ADB设备。
* 如果你的系统已经安装了adb工具，可以把本项目的 platform-tools 目录 删掉。

### 命令行方式
```
adb_install xxx.zip
```
为了避免系统找不到 adb_install，需要把 adb_install.cmd 所在目录路径添加到 PATH 环境变量。

### 拖拽文件方式
* 把zip包拖拽到 adb_install.cmd 文件上即可(可以创建快捷方式到桌面)
* 或者直接双击 adb_install.cmd，再把zip包拖拽到窗口，然后回车确认即可

## 压缩包要求
* 压缩包内的根目录需存在 install.sh
* 请保证设备上能用 unzip 解压你的压缩包
* 压缩包会被直接解压到设备根目录，设计部署包的内容时请考虑好

## macOS版本分支
https://github.com/telpouc/adb_install/tree/darwin
