# 灵枢AI专用操作脚本

<div align="center">
  <img src="https://trae-api-cn.mchost.guru/api/ide/v1/text_to_image?prompt=modern%20clean%20logo%20for%20Lingos%20AI%20tool%20with%20blue%20and%20green%20colors%20representing%20artificial%20intelligence%20and%20technology&image_size=square_hd" alt="Lingos Logo" width="200" height="200">
  <h2>专注于人工智能计算任务处理的专用操作脚本</h2>
  <p>⚡ 轻量化 • 📦 便携性 • 🎯 专注AI • 🖥️ 跨平台</p>
  <br>
  <a href="#快速开始">
    <img src="https://img.shields.io/badge/快速开始-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="快速开始">
  </a>
  <a href="#命令系统">
    <img src="https://img.shields.io/badge/命令系统-3776AB?style=for-the-badge&logo=linux&logoColor=white" alt="命令系统">
  </a>
  <a href="#使用文档">
    <img src="https://img.shields.io/badge/使用文档-42B883?style=for-the-badge&logo=github&logoColor=white" alt="使用文档">
  </a>
</div>

## 项目简介

灵枢是一款专注于人工智能计算任务处理的专用操作脚本，采用非桌面化交互设计，所有系统操作通过指令方式完成，仅在进行Python编程时提供标准代码编写界面。

灵枢旨在为AI开发者提供一个轻量、高效、专注的工具，简化Python环境管理、包管理、任务管理等常见操作，让开发者能够更专注于AI模型的开发和训练。

## 主要功能亮点

### 🚀 多Python环境管理
- 支持从清华源镜像下载指定版本的Python
- 提供简单的命令实现环境切换
- 隔离不同项目的依赖，避免冲突

### 📦 轻量化与便携性
- 软件体积小巧，资源占用低
- 支持便携模式，无需安装即可运行
- 跨平台支持，兼容Windows、Linux、MacOS

### 🎯 指令系统设计
- 命令命名简洁直观，符合AI领域使用习惯
- 分类清晰，易于学习和记忆
- 支持子命令和参数，功能丰富

### 🖥️ 现代化Python编辑器
- 集成Visual Studio Code，提供专业编辑体验
- 支持语法高亮、代码补全、自动缩进等功能
- 一键下载和安装，无需手动配置

### 📊 任务管理系统
- 创建和管理AI计算任务
- 支持指定运行脚本和Python环境
- 监控任务运行状态

### 🔍 系统集成
- 自动配置路径，确保在CMD中直接运行
- 提供系统信息和资源监控功能
- 支持与系统启动项集成

## 技术栈

| 类别 | 技术/库 | 用途 |
|------|---------|------|
| **主要语言** | Python 3.8+ | 核心功能实现 |
| **命令解析** | argparse | 命令行参数解析 |
| **环境管理** | venv | 创建和管理Python环境 |
| **网络请求** | requests | 从镜像源下载Python |
| **系统监控** | psutil | 监控系统资源使用情况 |
| **编辑器** | Visual Studio Code | 提供代码编辑功能 |
| **跨平台** | 原生代码 | 支持Windows、Linux、MacOS |

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

- **Windows**：运行 `portable.bat` 脚本
- **Linux/Mac**：运行 `./portable.sh` 脚本

## 命令系统

### 基础命令
- `lingos help` - 显示帮助信息
- `lingos version` - 显示版本信息
- `lingos exit` - 退出灵枢
- `lingshu` - 启动灵枢交互式命令shell

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
- `lingos download-editor` - 下载灵枢编辑器

## 使用指南

详细的使用指南请查看 [使用文档](USER_GUIDE.md)，包含：

- 项目概述和架构
- 详细安装步骤
- 功能说明和使用方法
- 常见问题解答
- 高级功能和故障排除

## 贡献方式

我们欢迎社区贡献，无论是代码、文档还是建议。以下是贡献的几种方式：

### 提交Issue
- 报告bug
- 提出新功能建议
- 讨论改进方案

### 提交Pull Request
1. Fork本仓库
2. 创建特性分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 打开Pull Request

### 代码规范
- 遵循PEP 8代码风格
- 提供清晰的代码注释
- 确保代码可测试性
- 提交前运行测试

## 许可证

本项目采用MIT许可证，详见 [LICENSE](LICENSE) 文件。

## 联系方式

如果您有任何问题或建议，欢迎联系我们：

- **项目地址**：https://github.com/wwwwww344/lingshuboot
- **邮箱**：1718039019@qq.com


## 版本历史

### v1.0.0 (2024-01-01)
- 初始发布
- 实现核心功能：Python环境管理、包管理、任务管理、系统监控、编辑器集成
- 支持Windows、Linux、MacOS平台

---

<div align="center">
  <p>✨ 灵枢AI专用操作脚本 - 专注于人工智能计算任务的高效工具 ✨</p>
  <p>
    <a href="#">
      <img src="https://img.shields.io/github/stars/lingos-ai/lingos?style=social" alt="GitHub Stars">
    </a>
    <a href="#">
      <img src="https://img.shields.io/github/forks/lingos-ai/lingos?style=social" alt="GitHub Forks">
    </a>
    <a href="#">
      <img src="https://img.shields.io/github/license/lingos-ai/lingos" alt="License">
    </a>
  </p>
</div>
