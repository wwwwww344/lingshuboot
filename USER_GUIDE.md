# 灵枢AI专用操作脚本使用文档

## 1. 项目概述

灵枢是一款专注于人工智能计算任务处理的专用操作脚本，采用非桌面化交互设计，所有系统操作通过指令方式完成，仅在进行Python编程时提供标准代码编写界面。

### 核心特性

- **多Python环境管理**：支持预装多个Python版本，提供内置指令实现Python版本切换，集成Python包管理功能
- **轻量化与便携性**：软件体积小巧，资源占用低，支持便携化运行，无需复杂安装过程
- **指令系统设计**：开发了一套独特且易于记忆的指令集，指令命名简洁直观，符合人工智能领域使用习惯
- **现代化Python编辑器**：提供具有灵枢特色的现代化Python编辑器界面，支持语法高亮、代码补全、自动缩进等功能
- **任务管理系统**：实现人工智能计算任务的全流程支持，提供任务管理、资源监控、结果导出等辅助功能
- **系统集成**：自动配置路径，确保在CMD中可以直接运行灵枢命令

### 技术架构

灵枢采用模块化设计，主要组件包括：

- **CLI模块**：命令行界面和命令解析器
- **命令模块**：实现各种功能命令
- **环境管理模块**：管理Python环境
- **编辑器模块**：提供Python代码编辑功能
- **任务管理模块**：管理AI计算任务
- **系统模块**：提供系统信息和监控功能

## 2. 安装步骤

### 2.1 系统要求

- Python 3.8+
- Windows 10+ 或 Linux/MacOS
- 至少 1GB 内存
- 至少 500MB 磁盘空间

### 2.2 Windows安装

1. 下载灵枢压缩包并解压到任意目录
2. 以管理员身份运行 `install.bat` 脚本
3. 按照提示完成安装

### 2.3 Linux/Mac安装

1. 下载灵枢压缩包并解压到任意目录
2. 在终端中运行 `sudo ./install.sh` 脚本
3. 按照提示完成安装

### 2.4 便携模式

如果您不想安装灵枢，可以使用便携模式运行：

- **Windows**：运行 `portable.bat` 脚本
- **Linux/Mac**：运行 `./portable.sh` 脚本

## 3. 功能说明

### 3.1 多Python环境管理

灵枢提供了强大的Python环境管理功能，支持创建、切换和管理多个Python环境：

- **环境创建**：支持从清华园镜像下载指定版本的Python，创建隔离的虚拟环境
- **环境切换**：在多个Python环境间快速切换，适应不同项目需求
- **环境列表**：查看所有已创建的Python环境，了解当前使用的环境

### 3.2 Python包管理

灵枢集成了Python包管理功能，通过简洁的命令管理Python包：

- **包安装**：安装指定的Python包及其依赖
- **包卸载**：卸载不需要的Python包
- **包更新**：更新已安装的Python包到最新版本
- **包列表**：查看所有已安装的Python包及其版本

### 3.3 任务管理系统

灵枢提供了AI计算任务的管理功能，支持任务的创建、启动、停止和状态监控：

- **任务创建**：创建AI计算任务，指定运行脚本和Python环境
- **任务启动**：启动已创建的任务，开始执行计算
- **任务停止**：停止正在运行的任务
- **状态监控**：查看任务的运行状态和详细信息

### 3.4 现代化Python编辑器

灵枢集成了现代化的Python编辑器，基于Visual Studio Code，提供专业的代码编辑体验：

- **自动安装**：通过命令自动下载和安装编辑器
- **代码编辑**：支持语法高亮、代码补全、自动缩进等功能
- **文件管理**：打开和编辑Python脚本文件

### 3.5 系统管理功能

灵枢提供了系统信息和监控功能，帮助您了解系统状态：

- **系统信息**：查看操作系统、Python版本、IP地址等信息
- **资源监控**：监控CPU、内存、磁盘使用情况
- **系统配置**：配置系统设置和参数

## 4. 使用方法

### 4.1 基础命令

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos help` | 显示帮助信息 | `lingos help` |
| `lingos version` | 显示版本信息 | `lingos version` |
| `lingos exit` | 退出灵枢 | `lingos exit` |
| `lingshu` | 启动灵枢交互式命令shell | `lingshu` |

### 4.2 Python环境管理

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos pyenv create <名称>` | 创建Python环境 | `lingos pyenv create ai_env` |
| `lingos pyenv switch <名称>` | 切换Python环境 | `lingos pyenv switch ai_env` |
| `lingos pyenv list` | 列出所有Python环境 | `lingos pyenv list` |
| `lingos pyenv versions` | 列出所有可用的Python版本 | `lingos pyenv versions` |

### 4.3 包管理 (LSP)

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos lsp i <包名>` | 安装Python包 | `lingos lsp i numpy` |
| `lingos lsp ui <包名>` | 卸载Python包 | `lingos lsp ui matplotlib` |
| `lingos lsp u <包名>` | 更新Python包 | `lingos lsp u scikit-learn` |
| `lingos lsp ls` | 列出已安装的包 | `lingos lsp ls` |

### 4.4 任务管理

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos task create <名称>` | 创建AI计算任务 | `lingos task create train_model --script train.py --env ai_env` |
| `lingos task start <名称>` | 启动任务 | `lingos task start train_model` |
| `lingos task stop <名称>` | 停止任务 | `lingos task stop train_model` |
| `lingos task status [名称]` | 查看任务状态 | `lingos task status train_model` |

### 4.5 系统管理

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos system info` | 显示系统信息 | `lingos system info` |
| `lingos system monitor` | 监控系统资源 | `lingos system monitor` |
| `lingos system config [键] [值]` | 配置系统设置 | `lingos system config timeout 30` |

### 4.6 编辑器

| 命令 | 功能 | 示例 |
|------|------|------|
| `lingos edit <文件>` | 打开Python编辑器 | `lingos edit script.py` |
| `lingos editor` | 启动编辑器 | `lingos editor` |
| `lingos download-editor` | 下载灵枢编辑器 | `lingos download-editor` |

## 5. 常见问题解答

### 5.1 安装问题

#### Q: 安装过程中出现权限错误怎么办？
A: 请确保以管理员身份运行安装脚本，Windows系统需要右键点击脚本选择"以管理员身份运行"，Linux/Mac系统需要使用sudo命令。

#### Q: 便携模式运行时出现命令未找到错误怎么办？
A: 请确保您在灵枢的解压目录中运行便携脚本，或者将灵枢的bin目录添加到系统PATH环境变量中。

### 5.2 Python环境问题

#### Q: 创建Python环境时下载失败怎么办？
A: 灵枢会尝试从多个镜像源下载Python，如果所有源都失败，请检查网络连接，或者尝试不指定Python版本，使用系统已安装的Python。

#### Q: 切换Python环境后，包管理命令仍然使用旧环境怎么办？
A: 请确保您使用的是灵枢的包管理命令（`lingos lsp`），而不是直接使用pip命令。灵枢的包管理命令会自动使用当前切换的环境。

### 5.3 任务管理问题

#### Q: 启动任务后如何查看任务的详细输出？
A: 目前灵枢的任务管理系统会将任务状态保存在任务文件中，您可以查看任务文件了解任务状态。未来版本将增加任务输出日志功能。

#### Q: 任务运行过程中系统重启了怎么办？
A: 系统重启后，任务会停止运行。您需要重新启动任务，或者在创建任务时设置自动重启选项（未来版本支持）。

### 5.4 编辑器问题

#### Q: 下载编辑器失败怎么办？
A: 请检查网络连接，或者手动下载Visual Studio Code并安装，然后将其路径添加到系统PATH环境变量中。

#### Q: 编辑器打开文件后无法保存怎么办？
A: 请确保您有文件的写入权限，或者以管理员身份运行灵枢。

### 5.5 系统管理问题

#### Q: 系统监控功能无法使用怎么办？
A: 系统监控功能需要安装psutil模块，请使用 `lingos lsp i psutil` 命令安装。

#### Q: 如何查看更详细的系统信息？
A: 您可以使用系统自带的工具查看详细信息，例如Windows的任务管理器，Linux的top命令，Mac的活动监视器。

## 6. 高级功能

### 6.1 自定义Python环境

灵枢支持创建自定义的Python环境，您可以指定Python版本和安装位置：

```bash
# 创建指定Python版本的环境
lingos pyenv create ai_env python==3.9.0

# 查看环境详情
lingos pyenv list
```

### 6.2 批量管理Python包

您可以通过requirements.txt文件批量安装和管理Python包：

```bash
# 安装requirements.txt中的所有包
lingos lsp i -r requirements.txt

# 导出已安装的包到requirements.txt
lingos lsp ls --format=freeze > requirements.txt
```

### 6.3 任务调度

灵枢支持创建和管理多个任务，您可以根据需要调度任务的执行：

```bash
# 创建多个任务
lingos task create task1 --script script1.py --env env1
lingos task create task2 --script script2.py --env env2

# 启动任务
lingos task start task1
lingos task start task2

# 查看所有任务状态
lingos task status
```

### 6.4 系统集成

灵枢支持与系统集成，您可以在系统启动时自动运行灵枢命令，或者将灵枢命令添加到系统脚本中：

```bash
# 在Windows系统中添加到启动项
# 在Linux/Mac系统中添加到crontab
```

## 7. 故障排除

### 7.1 命令执行失败

如果命令执行失败，请检查以下几点：

1. 确保您输入的命令格式正确，参考帮助信息
2. 检查网络连接是否正常，特别是需要下载文件的命令
3. 确保您有足够的权限执行命令
4. 查看错误信息，了解具体失败原因

### 7.2 环境变量问题

如果遇到环境变量问题，请检查以下几点：

1. 确保灵枢的bin目录已添加到系统PATH环境变量中
2. 检查Python环境变量是否正确设置
3. 重新启动终端或命令提示符，使环境变量生效

### 7.3 日志和调试

灵枢会在执行过程中输出详细的日志信息，帮助您了解执行过程和排查问题。如果遇到问题，请查看命令输出的详细信息，或者联系技术支持。

## 8. 联系与支持

如果您在使用灵枢过程中遇到问题，或者有任何建议和反馈，欢迎联系我们：

- 项目地址：https://github.com/lingos-ai/lingos
- 邮箱：contact@lingos.ai
- 社区论坛：https://forum.lingos.ai

---

**灵枢AI专用操作脚本 - 专注于人工智能计算任务的高效工具**