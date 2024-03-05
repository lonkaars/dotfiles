#!/bin/bash
TAB="$(printf '\t')"

# TODO: add options:
# --help to display some help
# --list to list all the versions of a password

# print error if fzf is not found
command -v fzf > /dev/null || exec bash -c fzf || exit 1

# load pass source code for accessing internals
exit() { true ; } # disable exit command
. "$(command -v pass)" exit # source pass source (bash)
exit() { command exit ; } # restore exit command

cd "$(pass directory)"

set_git "$PWD/"
if [ -z "$INNER_GIT_DIR" ] ; then
	cat << "EOF" >&2
pass-treasure only works when the password store is tracked under version
control using git!
EOF
fi

# create a list of all files that ever existed in the password store
# repository, then filter empty lines (created by git log), only show file
# names ending in .gpg, and sort the list
repo_files_all="$(\
	cmd_git log --all --pretty="format:" --name-only --diff-filter=A |\
	sed '/^$/d' | sed -n '/\.gpg$/p' |\
	sort)"

IFS="$TAB" read -r date file hash < <(
	while read -u 3 -r file ; do
		while IFS="$TAB" read -u 4 -r hash date ; do
			printf '%s\t%s\t%s\n' "$date" "$file" "$hash"
		done 4< <(
			cmd_git log --no-patch --diff-filter=ABCMRTUX --format="format:%H$TAB%ad" \
				-- "$file"
			echo
		)
	done 3< <( echo "$repo_files_all" ) | fzf --tabstop=4
)

cmd_git cat-file -p "$hash:$file" | $GPG -d "${GPG_OPTS[@]}" -

