# 灵枢AI专用操作脚本

灵枢是一款专注于人工智能计算任务处理的专用操作脚本，采用非桌面化交互设计，所有系统操作通过指令方式完成，仅在进行Python编程时提供标准代码编写界面。

## 核心特性

- **多Python环境管理**：支持预装多个Python版本，提供内置指令实现Python版本切换，集成Python包管理功能
- **轻量化与便携性**：软件体积小巧，资源占用低，支持便携化运行，无需复杂安装过程
- **指令系统设计**：开发了一套独特且易于记忆的指令集，指令命名简洁直观，符合人工智能领域使用习惯
- **现代化Python编辑器**：提供具有灵枢特色的现代化Python编辑器界面，支持语法高亮、代码补全、自动缩进等功能
- **任务管理系统**：实现人工智能计算任务的全流程支持，提供任务管理、资源监控、结果导出等辅助功能
- **系统集成**：自动配置路径，确保在CMD中可以直接运行灵枢命令

## 快速开始

### 安装方法

#### Windows
1. 下载灵枢压缩包并解压到任意目录
2. 以管理员身份运行 `install.bat` 脚本
3. 按照提示完成安装

#### Linux/Mac
1. 下载灵枢压缩包并解压到任意目录
2. 在终端中运行 `sudo ./install.sh` 脚本
3. 按照提示完成安装

### 便携模式

如果您不想安装灵枢，可以使用便携模式运行：

#### Windows
- 运行 `portable.bat` 脚本

#### Linux/Mac
- 运行 `./portable.sh` 脚本

## 命令系统

### 基础命令

- `lingos help` - 显示帮助信息
- `lingos version` - 显示版本信息
- `lingos exit` - 退出灵枢

### Python环境管理

- `lingos pyenv create <名称>` - 创建Python环境
- `lingos pyenv switch <名称>` - 切换Python环境
- `lingos pyenv list` - 列出所有Python环境

### 包管理 (LSP)

- `lingos lsp i <包名>` - 安装Python包
- `lingos lsp ui <包名>` - 卸载Python包
- `lingos lsp u <包名>` - 更新Python包
- `lingos lsp ls` - 列出已安装的包

### 任务管理

- `lingos task create <名称>` - 创建AI计算任务
- `lingos task start <名称>` - 启动任务
- `lingos task stop <名称>` - 停止任务
- `lingos task status [名称]` - 查看任务状态

### 系统管理

- `lingos system info` - 显示系统信息
- `lingos system monitor` - 监控系统资源
- `lingos system config [键] [值]` - 配置系统设置

### 编辑器

- `lingos edit <文件>` - 打开Python编辑器
- `lingos editor` - 启动编辑器

## 示例用法

### 1. 创建并使用Python环境

```bash
# 创建一个名为ai_env的Python环境
lingos pyenv create ai_env

# 切换到ai_env环境
lingos pyenv switch ai_env

# 列出所有环境
lingos pyenv list
```

### 2. 安装和管理Python包

```bash
# 安装numpy包
lingos lsp i numpy

# 安装特定版本的tensorflow
lingos lsp i tensorflow==2.10.0

# 更新scikit-learn包
lingos lsp u scikit-learn

# 卸载不需要的包
lingos lsp ui matplotlib

# 列出所有已安装的包
lingos lsp ls
```

### 3. 创建和管理AI计算任务

```bash
# 创建一个名为train_model的任务
lingos task create train_model --script train.py --env ai_env

# 启动任务
lingos task start train_model

# 查看任务状态
lingos task status train_model

# 停止任务
lingos task stop train_model
```

### 4. 使用Python编辑器

```bash
# 编辑现有的Python脚本
lingos edit train.py

# 启动编辑器
lingos editor
```

### 5. 监控系统资源

```bash
# 查看系统信息
lingos system info

# 监控系统资源使用情况
lingos system monitor
```

## 配置文件

灵枢的配置文件位于 `config.json`，包含以下配置项：

- `current_env` - 当前使用的Python环境
- `environments` - 已创建的Python环境列表

## 技术架构

灵枢采用模块化设计，主要组件包括：

- **CLI模块**：命令行界面和命令解析器
- **命令模块**：实现各种功能命令
- **环境管理模块**：管理Python环境
- **编辑器模块**：提供Python代码编辑功能
- **任务管理模块**：管理AI计算任务
- **系统模块**：提供系统信息和监控功能

## 系统要求

- Python 3.8+
- Windows 10+ 或 Linux/MacOS
- 至少 1GB 内存
- 至少 500MB 磁盘空间

## 依赖项

灵枢的核心功能仅依赖Python标准库，部分高级功能可能需要以下依赖：

- `psutil` - 用于系统资源监控

## 许可证

灵枢AI专用操作脚本采用MIT许可证。

## 联系方式

如果您有任何问题或建议，欢迎联系我们：

- 项目地址：https://github.com/lingos-ai/lingos
- 邮箱：contact@lingos.ai

---

**灵枢AI专用操作脚本 - 专注于人工智能计算任务的高效工具**
