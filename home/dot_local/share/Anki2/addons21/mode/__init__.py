#!/bin/python3
from aqt import mw
from aqt.utils import tr
from aqt.theme import Theme
from os import environ
from pathlib import Path

THEME_DARK = 2
THEME_LIGHT = 1

path = Path(environ['XDG_CACHE_HOME'], 'mode/state/mode')
with path.open() as file:
  mode = file.read().strip()
  if mode == "dark":
    mw.set_theme(Theme(THEME_DARK))
  if mode == "light":
    mw.set_theme(Theme(THEME_LIGHT))

