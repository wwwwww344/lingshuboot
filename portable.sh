#!/bin/bash

# 灵枢AI专用操作脚本便携模式启动器
# Linux/Mac版 - 无需安装

LINGOS_ROOT="$(cd "$(dirname "$0")" && pwd)"
LINGOS_BIN="$LINGOS_ROOT/bin"

# 临时添加灵枢到PATH
export PATH="$LINGOS_BIN:$PATH"

echo "灵枢AI专用操作脚本 - 便携模式"
echo "根目录: $LINGOS_ROOT"
echo "启动命令行界面..."
echo ""

# 启动灵枢CLI
python3 "$LINGOS_ROOT/core/cli.py"

echo ""
echo "灵枢已退出"
read -p "按Enter键继续..."
