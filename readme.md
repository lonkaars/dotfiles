# dottydots

these are dotfiles

- zsh
- nvim + coc
- i3
- polybar
- chromium and it's forks
- zathura
- rofi
- [st](https://github.com/lonkaars/st)
- xresources
- fcitx5
- gtk3
- neomutt + imapnotify + mbsync
- mpd + ncmpcpp
- dunst
- xfsettingsd
- discord

i use these dotfiles on a desktop computer (superesc) and a laptop (thoncc).
use `yadm config local.hostname <superesc|thoncc>` before `yadm alt` to choose
which config files should be used if your hostname is something else.

## installation

```sh
# install yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si

# install yadm
yay -S yadm

# get dotfiles
yadm clone https://github.com/lonkaars/dotfiles

# generate templated files
yadm alt

# install necessary packages (uses yay)
~/.config/yadm/install-arch

# generate dynamic color scheme config files
yadm bootstrap
```
