# Dotfiles

Personal X11/i3 configuration, managed as GNU Stow packages. Each top-level
directory mirrors the path it should create in `$HOME`; for example,
`kitty/.config/kitty/kitty.conf` becomes `~/.config/kitty/kitty.conf`.
The `xdg` package manages `~/.config/mimeapps.list`.

## Install

Install GNU Stow and the programs whose configuration you intend to use, then
run:

```sh
./install.sh
```

Pass another home directory to preview or provision a separate user:

```sh
./install.sh /path/to/home
```

Stow deliberately stops when a target already exists and is not a symlink.
Review or back up that file, then rerun the command; do not use `--adopt`
without reviewing the resulting changes.

## Dependencies

The i3 session expects i3, dex, nm-applet, pactl/PipeWire or PulseAudio,
Kitty, Polybar, Picom, dunst, rofi, feh, xrandr, Flameshot, and a Nerd Font.
Optional integrations include OpenTabletDriver, EasyEffects, qutebrowser,
fastfetch, zathura, and Neovim/Vim.

The display output, refresh rate, network interface, and battery names in the
i3 and Polybar configurations are deliberately machine-specific. Adjust
`HDMI-0`, `BAT0`, `AC0`, and `wlan0` before using this on a different machine.

## Notes

- `bashrc/.bashrc` is the only tracked Bash source. It is linked to
  `~/.bashrc` by Stow.
- Runtime logs, locks, backups, and editor swap files are intentionally
  ignored.
- `user-dirs.dirs` and `user-dirs.locale` are generated per machine and are
  intentionally not installed.
- Kitty remote control is enabled because `kitty-fallback-theme` uses it.
  Disable `allow_remote_control` in Kitty if that function is not needed.
- Vim currently bootstraps vim-plug by downloading it on first launch. Review
  that behavior before using the configuration on a security-sensitive system.
