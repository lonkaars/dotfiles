# dottydots

these are dotfiles

- discord
- zsh
- nvim
- i3
- polybar
- zathura
- brave
- rofi
- [st](https://github.com/lonkaars/st)

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
