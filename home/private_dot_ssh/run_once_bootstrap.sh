#!/usr/bin/env sh
# vim:ft=sh

[ "$(find ~/.ssh -name 'id_*' -maxdepth 1 2>/dev/null | wc -l)" -ne 0 ] && exit 0

echo "generating ssh keys"
ssh-keygen -q -N "" < /dev/zero 1>/dev/null

