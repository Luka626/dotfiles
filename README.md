# Dotfiles

Personal dotfiles managed with GNU Stow.

## Prerequisites

Install GNU Stow:
```bash
# Debian/Ubuntu
sudo apt install stow
```

## Quick Start

Clone this repository to your home directory:
```bash
cd ~
git clone <your-repo-url> dotfiles-main
cd ~/dotfiles
```

### Automated Setup (Recommended)

Install system dependencies (git, stow, tmux, neovim):
```bash
bash local/.local/bin/dotfiles-setup
```

Install all dotfiles:
```bash
bash local/.local/bin/dotfiles-install
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
stow bash   # Install bash configs
stow nvim   # Install nvim configs
stow tmux   # Install tmux configs
stow local  # Install scripts to ~/.local/bin
```

Install all packages at once:
```bash
stow bash nvim tmux local
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
- `bash/` - Bash configuration (.bashrc, .bash_profile)
- `nvim/` - Neovim configuration
- `tmux/` - Tmux configuration
- `local/` - Local scripts and utilities in ~/.local/bin

## How It Works

GNU Stow creates symlinks from this directory to your home directory. For example:
- `bash/.bashrc` → `~/.bashrc`
- `nvim/.config/nvim/init.lua` → `~/.config/nvim/init.lua`
- `tmux/.tmux.conf` → `~/.tmux.conf`
- `local/.local/bin/dotfiles-setup` → `~/.local/bin/dotfiles-setup`

## Management Scripts

Once you've stowed the `local` package, these scripts are available:

- `dotfiles-setup` - Install system dependencies (git, stow, tmux, neovim)
- `dotfiles-install [package...]` - Install all or specific dotfiles packages
- `dotfiles-uninstall [package...]` - Remove all or specific dotfiles packages

Examples:
```bash
dotfiles-install              # Install all packages
dotfiles-install bash nvim    # Install only bash and nvim
dotfiles-uninstall tmux       # Remove tmux configs
```
