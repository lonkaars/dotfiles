#!/bin/bash
# print the initialized password store directory as a fully qualified path.
# exits with code 1 if the password store is not initialized.
dir="${PASSWORD_STORE_DIR-$HOME/.password-store}"
dir="$(realpath "$dir")"
if [ -e "$dir/.gpg-id" ] ; then
	echo "$dir"
else
	echo "error: password store is not initialized" >&2
	exit 1
fi

