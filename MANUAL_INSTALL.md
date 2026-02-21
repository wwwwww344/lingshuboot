# 灵枢手动安装指南

如果自动安装脚本遇到问题，您可以按照以下步骤手动安装灵枢：

## Windows手动安装

### 1. 设置环境变量

1. 右键点击"此电脑"，选择"属性"
2. 点击"高级系统设置"
3. 点击"环境变量"
4. 在"系统变量"中找到"Path"，点击"编辑"
5. 点击"新建"，添加灵枢的bin目录路径，例如：
   ```
   H:\灵枢OS\lingos\bin
   ```
6. 点击"确定"保存所有更改

### 2. 验证安装

1. 打开新的CMD窗口
2. 运行以下命令：
   ```
   lingos version
   ```
3. 如果看到版本信息，说明安装成功

## Linux/Mac手动安装

### 1. 设置环境变量

1. 编辑 `~/.bashrc` 或 `~/.zshrc` 文件
2. 在文件末尾添加：
   ```bash
   export PATH="/path/to/lingos/bin:$PATH"
   ```
3. 保存文件并运行：
   ```bash
   source ~/.bashrc
   # 或 source ~/.zshrc
   ```

### 2. 验证安装

1. 打开新的终端窗口
2. 运行以下命令：
   ```bash
   lingos version
   ```
3. 如果看到版本信息，说明安装成功

## 便携模式运行

如果您不想修改系统环境变量，可以使用便携模式运行灵枢：

### Windows

1. 进入灵枢目录
2. 运行 `portable.bat` 脚本

### Linux/Mac

1. 进入灵枢目录
2. 运行 `./portable.sh` 脚本

## 直接运行Python脚本

如果以上方法都失败，您可以直接运行Python脚本：

```bash
# Windows
python "H:\灵枢OS\lingos\core\cli.py" version

# Linux/Mac
python3 "/path/to/lingos/core/cli.py" version
```

## 常见问题解决

### 1. 命令未找到

- 检查环境变量是否正确设置
- 确保打开了新的终端窗口（环境变量更改需要新窗口才能生效）
- 尝试使用完整路径运行

### 2. 编码问题

- Windows命令提示符默认使用GBK编码
- 确保批处理文件使用GBK编码保存
- 尝试使用英文路径和文件名

### 3. Python未找到

- 确保Python已安装并添加到PATH
- 尝试使用完整的Python路径

## 联系方式

如果您遇到其他问题，请联系我们：
- 项目地址：https://github.com/lingos-ai/lingos
- 邮箱：contact@lingos.ai
