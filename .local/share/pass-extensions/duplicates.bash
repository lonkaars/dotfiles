#!/bin/bash
cd "${PASSWORD_STORE_DIR-$HOME/.password-store}" || exit 1

declare -A dupe_tally dupe_map

pass_names="$(\
	find . -type d -name '.git' -prune -o -name '*.gpg' -type f -print |\
	cut -c3- | rev | cut -c5- | rev)"

pass_count="$(echo "$pass_names" | wc -l)"
if [ "$pass_count" -gt 10 ] ; then
	cat << EOF >&2
pass-duplicates needs to decrypt all your passwords one-by-one to cross-match
them. This is all done in-memory, and nothing is saved to disk. You appear to
have $pass_count passwords, so this may take some time...

EOF
fi

while read pass_name ; do
	hash="$(pass show "$pass_name" | head -n1 | sha1sum | cut -c1-40)"

	dupe_map["$pass_name"]="$hash"
	dupe_tally["$hash"]=$(( ${dupe_tally["$hash"]} + 1 ))
done < <(echo "$pass_names")

duplicates=0

for talley_key in "${!dupe_tally[@]}" ; do
	[ "${dupe_tally["$talley_key"]}" -le 1 ] && continue;
	duplicates=$(( $duplicates + 1 ))

	echo "same password:"
	for pass_name in "${!dupe_map[@]}" ; do
		[ "${dupe_map["$pass_name"]}" != "$talley_key" ] && continue;
		echo "- $pass_name"
	done
	echo
done

echo "summary:"
if [ $duplicates -eq 0 ] ; then
	echo "- no duplicates"
else
	echo "- found $duplicates password(s) that were used more than once"
fi
