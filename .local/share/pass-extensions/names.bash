#!/bin/bash
# list all passwords in store

pass_dir="$(pass directory)"
[ $? -ne 0 ] && exit 1
cd "$pass_dir"

# List all files in password store (ignoring .git and .extensions folders) and
# trim './' prefix and '.gpg' suffix
find -L . \
	-type d -name '.git' -prune \
	-o -type d -name '.extensions' -prune \
	-o -name '*.gpg' \
	-type f \
	-print |\
cut -c3- | rev | cut -c5- | rev

