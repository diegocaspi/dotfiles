# 🚀 Diego's Nix Configuration

Welcome to my personal Nix configuration! This repository contains my system configuration using Nix, nix-darwin, and Home Manager. It's designed to make my development environment reproducible, maintainable, and delightful to use.

## ✨ Features

- 🍎 **macOS Integration** via nix-darwin
- 🏠 **Home Manager** for user environment configuration
- 🖥️ **Window Management** with Aerospace
- 🧰 **Development Tools**
  - Neovim configuration
  - Docker setup
  - Kubernetes tools
  - Bun runtime
- 🎨 **Desktop Environment**
  - Raycast for productivity
  - Ghostty terminal
  - Brave browser
  - Cursor IDE

## 🏗️ Structure

```
.
├── flake.nix           # Flake configuration
├── home/               # Home Manager configurations
│   └── diegocaspi/    # Personal configurations
├── hosts/             # Host-specific configurations
│   └── nyxal/        # MacBook configuration
├── lib/               # Custom Nix functions
└── modules/           # Shared Nix modules
```

## 🚀 Getting Started

1. Install Nix:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
   ```

2. Enable Flakes:
   ```bash
   mkdir -p ~/.config/nix
   echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
   ```

3. Clone and build:
   ```bash
   git clone https://github.com/diegocaspi/nix-config.git
   cd nix-config
   nix run nix-darwin -- switch --flake .#nyxal
   ```

## ⚡ Quick Tips

- Rebuild system: `darwin-rebuild switch --flake .#nyxal`
- Update flake: `nix flake update`
- Clean old generations: `nix-collect-garbage -d`

## 🛠️ Customization

The configuration is organized into feature modules under `home/diegocaspi/features/`:
- `cli/`: Command-line tools and utilities
- `desktop/`: GUI applications and window management
- `global/`: System-wide settings

## 📦 Key Components

- **Window Management**: Aerospace for efficient window management
- **Terminal**: Ghostty for a modern terminal experience
- **Development**: 
  - Neovim as the primary editor
  - Docker for containerization
  - Kubernetes tools for container orchestration
  - Bun for JavaScript/TypeScript runtime

## 📝 License

This project is licensed under the MIT License - feel free to use it as inspiration for your own Nix configuration!

---

<p align="center">Built with ❤️ using Nix</p>