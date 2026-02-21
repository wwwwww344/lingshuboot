#!/bin/bash

# 灵枢AI专用操作脚本安装器
# Linux/Mac版

LINGOS_ROOT="$(cd "$(dirname "$0")" && pwd)"
LINGOS_BIN="$LINGOS_ROOT/bin"

echo "灵枢AI专用操作脚本安装"

echo "1. 正在设置环境变量..."

# 检查是否以管理员权限运行
if [ "$(id -u)" != "0" ]; then
    echo "错误: 需要以root权限运行此脚本"
    echo "请使用 sudo 运行此脚本"
    exit 1
fi

# 添加灵枢到系统PATH
if grep -q "$LINGOS_BIN" /etc/profile; then
    echo "灵枢已经在PATH中"
else
    echo "export PATH=\"$LINGOS_BIN:$PATH\"" >> /etc/profile
    echo "成功: 已将灵枢添加到系统PATH"
fi

# 使配置生效
source /etc/profile

echo "2. 正在设置执行权限..."

# 设置执行权限
chmod +x "$LINGOS_BIN/lingos.sh"
chmod +x "$LINGOS_ROOT/core/cli.py"

echo "3. 正在验证安装..."

# 验证安装
"$LINGOS_BIN/lingos.sh" version
if [ $? -eq 0 ]; then
    echo "成功: 灵枢安装验证通过"
else
    echo "警告: 灵枢安装验证失败"
fi

echo ""
echo "灵枢AI专用操作脚本安装完成！"
echo ""
echo "使用方法:"
echo "1. 在终端中直接运行: lingos"
echo "2. 运行 \"lingos help\" 查看命令帮助"

echo ""
read -p "按Enter键继续..."
