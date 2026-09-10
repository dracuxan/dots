#!/bin/bash

set -e # Exit on error

echo "-----------------------------------------"
echo "           DRACUXAN'S DOTFILES           "
echo "-----------------------------------------"

echo "[+] Checking stow..."
if command -v stow >/dev/null 2>&1; then
    echo "[+] exists"
else
    echo "[-] stow does not exist! Please install manually"
    exit 1
fi

echo "[+] Stowing dotfiles..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[+] Preparing ~/.config layout..."
for dir in fastfetch nvim; do
    mkdir -p "$HOME/.config/$dir"
done

echo "[+] Stowing configs into ~/.config/..."

for dir in fastfetch nvim; do
    stow --adopt -d "$DOTFILES_DIR" -t "$HOME/.config/$dir" "$dir"
done

stow --adopt -d "$DOTFILES_DIR" -t "$HOME/.config" starship

echo "[+] Stowing legacy dotfiles into ~/..."
for dir in zsh tmux; do
    stow --adopt -d "$DOTFILES_DIR" -t "$HOME" "$dir"
done

echo "[+] Stowing scripts into ~/.local/bin/..."
mkdir -p ~/.local/bin
stow --adopt -d "$DOTFILES_DIR" -t "$HOME/.local/bin" scripts

echo "-----------------------------------------"
echo "       SETUP COMPLETE. REBOOT NOW       "
echo "-----------------------------------------"
