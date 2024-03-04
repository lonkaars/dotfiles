#!/bin/bash
declare -A dupe_tally dupe_map

pass_names="$(pass names)"
[ $? -ne 0 ] && exit 1

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

unique_duplicates=0
total_shared=0

for talley_key in "${!dupe_tally[@]}" ; do
	[ "${dupe_tally["$talley_key"]}" -le 1 ] && continue;
	unique_duplicates=$(( $unique_duplicates + 1 ))

	echo "same password:"
	for pass_name in "${!dupe_map[@]}" ; do
		[ "${dupe_map["$pass_name"]}" != "$talley_key" ] && continue;
		echo "- $pass_name"
		total_shared=$(( $total_shared + 1 ))
	done
	echo
done

echo "summary:"
if [ $unique_duplicates -eq 0 ] ; then
	echo "- no duplicates"
else
	cat << EOF
- found $unique_duplicates password(s) that were used more than once
- you should change all $total_shared passwords listed above
EOF
fi
