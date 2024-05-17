RamDiskPkg
## 介绍

一种将系统引导`UEFI`分区集成到固件中的技术。

### 编译环境
- 支持OC的AUDK以及EDK2构建
- 已验证支持EDK2
- 已验证支持OpenCore专用构建依赖（使用macOS Xcode工具链构建必须使用该依赖）
- 
### 构建教程

- xcode依赖[ocmtoc](https://github.com/acidanthera/ocmtoc)而不是mtoc

### Xcode

```bash
git clone --depth=1 https://github.com/acidanthera/audk UDK 

cd UDK 

git submodule update --init --recommend-shallow 

rm -rf OpenCorePkg
 
git clone https://github.com/wy414012/RamDiskPkg.git

. ./edksetup.sh
 
make -C BaseTools 

build -a X64 -b RELEASE -t XCODE5 -p RamDiskPkg/RamDiskPkg.dsc

```
### GCC
