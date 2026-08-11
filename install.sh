#!/usr/bin/env bash
# Symlink this repository into a target home directory with GNU Stow.
set -euo pipefail

repo_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
target_dir=${1:-"$HOME"}

if ! command -v stow >/dev/null 2>&1; then
    printf '%s\n' 'GNU Stow is required. Install it with your distribution package manager.' >&2
    exit 1
fi

packages=(
    autostart bashrc btop caja fastfetch git greenclip.toml gtk-3.0 i3 kitty
    mpv nemo neomutt nvim picom polybar qutebrowser rofi touchegg vim xdg zathura
)

for package in "${packages[@]}"; do
    [[ -d "$repo_dir/$package" ]] || continue
    stow --restow --target "$target_dir" --dir "$repo_dir" "$package"
done
