#!/usr/bin/env python3
from aqt import mw
from aqt.theme import Theme
from os import getenv
from pathlib import Path
from sys import platform

def set_theme_mode():
  XDG_CACHE_HOME = Path(getenv('XDG_CACHE_HOME', Path.home().joinpath('.cache')))
  path = XDG_CACHE_HOME.joinpath('mode/state/mode')
  with path.open() as file:
    mode = file.read().strip()
    if mode == "dark":
      mw.set_theme(Theme.DARK)
    if mode == "light":
      mw.set_theme(Theme.LIGHT)

def set_theme_system():
  mw.set_theme(Theme.FOLLOW_SYSTEM)

set_theme = {
  "darwin": set_theme_system,
  "linux": set_theme_mode,
}.get(platform, lambda: None)
set_theme()

