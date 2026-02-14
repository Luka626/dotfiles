# Dotfiles

Personal dotfiles managed with GNU Stow.

## Prerequisites

Install curl:
```bash
sudo apt install curl
```

## Quick Start

Curl and run setup script, installs packages, installs dotfiles.
```bash
curl -sL https://raw.githubusercontent.com/Luka626/dotfiles/refs/heads/main/local/.local/bin/dotfiles-setup | bash
```

After installation, the scripts will be available system-wide:
```bash
dotfiles-setup      # Install system dependencies
dotfiles-install    # Install dotfiles (all or specific packages)
dotfiles-uninstall  # Remove dotfiles (all or specific packages)
```

### Manual Installation

Install specific packages:
```bash
stow zsh    # Install zsh configs
stow nvim   # Install nvim configs
stow tmux   # Install tmux configs
stow kitty  # Install kitty configs
stow local  # Install scripts to ~/.local/bin
stow oh-my-zsh-custom  # Install oh-my-zsh plugins
```

Install all packages at once:
```bash
stow zsh nvim tmux local kitty oh-my-zsh-custom
```

Remove (unstow) a package:
```bash
stow -D bash
```

Restow (useful after updates):
```bash
stow -R nvim
```

## Structure

Each directory represents a package:
- `zsh/` - zsh configuration 
- `nvim/` - Neovim configuration
- `tmux/` - Tmux configuration
- `local/` - Local scripts and utilities in ~/.local/bin
- `kitty/` - Kitty configuration
- `oh-my-zsh-custom/` - oh-my-zsh configuration

## How It Works

GNU Stow creates symlinks from this directory to your home directory. For example:
- `nvim/.config/nvim/init.lua` → `~/.config/nvim/init.lua`
- `tmux/.tmux.conf` → `~/.tmux.conf`
- `local/.local/bin/dotfiles-setup` → `~/.local/bin/dotfiles-setup`

## Management Scripts

Once you've stowed the `local` package, these scripts are available:

- `dotfiles-setup` - Install system dependencies (git, stow, kitty, nvim, etc.)
- `dotfiles-install` - Install all or update all dotfiles packages
- `dotfiles-uninstall` - Remove all dotfiles packages

