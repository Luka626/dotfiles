#!/usr/bin/env bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

echo_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

DOTFILES_DIR="$HOME/dotfiles"

if [ ! -d "$DOTFILES_DIR" ]; then
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    DOTFILES_DIR="$(cd "$SCRIPT_DIR/../../.." && pwd)"
fi

cd "$DOTFILES_DIR"
echo_info "Using dotfiles directory: $DOTFILES_DIR"
echo ""

PACKAGES=( $(ls $DOTFILES_DIR -d */ | tr -d "/") )

if [ $# -eq 0 ]; then
    echo_info "Uninstalling all packages..."
    for package in "${PACKAGES[@]}"; do
        if [ -d "$package" ]; then
            echo_info "Unstowing $package..."
            stow -D -v "$package"
        fi
    done
else
    echo_info "Uninstalling specified packages: $*"
    for package in "$@"; do
        if [ -d "$package" ]; then
            echo_info "Unstowing $package..."
            stow -D -v "$package"
        else
            echo_warn "Package '$package' not found, skipping"
        fi
    done
fi

echo ""
echo_info "Dotfiles uninstalled!"
