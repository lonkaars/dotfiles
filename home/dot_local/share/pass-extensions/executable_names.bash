#!/bin/bash
# list all passwords in store

pass_dir="$(pass directory)"
[ $? -ne 0 ] && exit 1
cd "$pass_dir"

usage() {
	cat << EOF
usage:
	pass names [-hl]

options:
	-l	ignore symbolic links in password store
	-h	show this help
EOF
	exit $1
}

ARGC=0
while getopts lh OPT; do
	[ $OPTIND -gt $ARGC ] && ARGC=$OPTIND
	case $OPT in
		l)
			opt_ignore_symlinks=y
			;;
		h) usage 0 ;;
		\?|*) usage 1 ;;
	esac
done

find_args=()

if [ -n "$opt_ignore_symlinks" ] ; then
	find_args+=(-P) # ignore symbolic links
else
	find_args+=(-L) # follow symbolic links
fi
find_args+=(.)
find_args+=(-type d -name .git -prune) # skip .git directory
find_args+=(-o -type d -name .extensions -prune) # skip .extensions directory
find_args+=(-o -type f -name '*.gpg') # only .gpg files
find_args+=(-print)

find "${find_args[@]}" | cut -c3- | rev | cut -c5- | rev

