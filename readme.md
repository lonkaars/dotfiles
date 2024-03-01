- these dotfiles utilize [yadm][yadm]'s templating functions, and rely on two
  sepcific hostnames. `superesc` is used on my desktop computer and `thoncc` on
  my laptop. you can run `yadm config local.hostname <superesc|thoncc>` before
  `yadm bootstrap` or `yadm alt` to choose which config files should be used if
  your hostname is something else.
- the github mirror of this repository still includes some large unreachable
  blobs (accidentally committed wallpapers). these are automatically removed by
  the bootstrap script. a smaller mirror of this repository that does not
  include these blobs by default should be available at
  <https://git.pipeframe.xyz/lonkaars/dots>.

fresh arch install steps:

- make sure base pacakges are installed (as root)
  ```
  # pacman -Sy base-devel git
  ```
- install yay
  ```
  $ git clone https://aur.archlinux.org/yay
  $ cd yay
  $ makepkg -si
  ```
- install yadm
  ```
  $ yay -S yadm
  ```
- get dotfiles
  ```
  $ yadm clone https://git.pipeframe.xyz/lonkaars/dots
  ```
- override hostname (optional)
  ```
  $ yadm config local.hostname <superesc|thoncc>
  ```
- do a bunch of setup
  ```
  $ yadm bootstrap
  ```

[yadm]: https://yadm.io/

