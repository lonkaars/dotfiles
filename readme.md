My dotfiles managed using [chezmoi]

[chezmoi]: https://www.chezmoi.io/

> [!NOTE]
> The github mirror of this repository still includes some large unreachable
> blobs (accidentally committed wallpapers). A smaller mirror of this
> repository that does not include these blobs is available at
> <https://git.pipeframe.xyz/lonkaars/dots>.

Optional configuration can be placed in `~/.config/chezmoi/chezmoi.yaml`:

```yaml
data:
  mpd:
    # configure mpd as a host (i.e. use local music directory instead of satellite)
    host: <bool>
    # base directory to use for playlists/pid/db files
    base_dir: <path>
  git:
    # git commit email
    email: <string>
    # git commit name
    name: <string>
    # git default branch (master)
    default_branch: <string>
    # commit signing gpg key id
    gpg_id: <keyid>
  # list of keygrips to unlock on login using pam-gnupg
  pam_gnupg: <list[str]>
```
