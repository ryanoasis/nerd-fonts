#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.1.0
# Iterates over all patched fonts directories
# converts all non markdown readmes to markdown (e.g., txt, rst) using pandoc
# adds information on additional-variations and complete font variations

infofilename="font-info.md"
unpatched_parent_dir="src/unpatched-fonts"
patched_parent_dir="patched-fonts"
LINE_PREFIX="# [Nerd Fonts] "

cd ../../src/unpatched-fonts/ || {
  echo >&2 "$LINE_PREFIX Could not find source fonts directory"
  exit 1
}


function appendRfnInfo {
  local config_rfn=$1; shift
  local config_rfn_substitue=$1; shift
  local working_dir=$1; shift
  local to=$1; shift
  if [ "$config_rfn" ] && [ "$config_rfn_substitue" ]
  then
    # add to the file
    {
      printf "\\n## Why \`%s\` and not \`%s\`?\\n" "$config_rfn_substitue" "$config_rfn"
      cat "$working_dir/../../src/readme-rfn-addendum.md"
    } >> "$to"
  fi
}

function clearDestination {
  local to_dir=$1; shift
  local to=$1; shift
  [[ -d "$to_dir" ]] || mkdir -p "$to_dir"
  # clear output file (needed for multiple runs or updates):
  true > "$to" 2> /dev/null
}

if [ $# -eq 1 ]; then
  like_pattern="./$1"
  # allows one to limit to specific font.
  # e.g. with ProFont, DejaVuSansMon, Hasklig, Hack, Gohu, FiraCode, Hermit, etc.
  echo "$LINE_PREFIX Parameter given, limiting find command of directories to pattern '$like_pattern' given"
else
  like_pattern="."
  echo "$LINE_PREFIX No parameter pattern given, generating standardized readmes for all fonts in all font directories"
fi

find "$like_pattern" -type d |
while read -r filename
do

  if [[ "$filename" == "." ]];
  then
    echo "$LINE_PREFIX Skipping directory '.'"
    continue
  fi

	dirname=$(dirname "$filename")
	searchdir=$filename
  base_directory=$(echo "$filename" | cut -d "/" -f2)

	# limit looking for the readme files in the parent dir not the child dirs:
	if [[ $dirname != "." ]];
	then
		searchdir=$dirname
  else
    # source the font config file if exists:
    if [ -f "$searchdir/config.cfg" ]
    then
      # shellcheck source=/dev/null
      source "$searchdir/config.cfg"
    else
      # reset the variables
      unset config_rfn
      unset config_rfn_substitue
    fi
	fi

	mapfile -t RST < <(find "$searchdir" -type f -iname 'readme.rst')
	mapfile -t TXT < <(find "$searchdir" -type f -iname 'readme.txt')
	mapfile -t MD < <(find "$searchdir" -type f -iname 'readme.md')
	outputdir=$PWD/../../patched-fonts/$filename/

	echo "$LINE_PREFIX Generating readme for: $filename"

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"


	if [ "${RST[0]}" ];
	then
		for i in "${RST[@]}"
		do
			echo "$LINE_PREFIX Found RST"

			from="$PWD/$i"
			to_dir="${PWD/$unpatched_parent_dir/$patched_parent_dir}/$filename"
			to="${to_dir}/$infofilename"

      clearDestination "$to_dir" "$to"

			pandoc "$from" --from=rst --to=markdown --output="$to"

      appendRfnInfo "$config_rfn" "$config_rfn_substitue" "$PWD" "$to"
      cat "$PWD/../../src/readme-per-directory-addendum.md" >> "$to"
		done
	elif [ "${TXT[0]}" ];
	then
		for i in "${TXT[@]}"
		do
			echo "$LINE_PREFIX Found TXT"

			from="$PWD/$i"
			to_dir="${PWD/$unpatched_parent_dir/$patched_parent_dir}/$filename"
			to="${to_dir}/$infofilename"

      clearDestination "$to_dir" "$to"

			cp "$from" "$to"

      appendRfnInfo "$config_rfn" "$config_rfn_substitue" "$PWD" "$to"
      cat "$PWD/../../src/readme-per-directory-addendum.md" >> "$to"
		done
	elif [ "${MD[0]}" ];
	then
		for i in "${MD[@]}"
		do
			echo "$LINE_PREFIX Found MD"

			from="$PWD/$i"
			to_dir="${PWD/$unpatched_parent_dir/$patched_parent_dir}/$filename"
			to="${to_dir}/$infofilename"

      clearDestination "$to_dir" "$to"

			cp "$from" "$to"

      appendRfnInfo "$config_rfn" "$config_rfn_substitue" "$PWD" "$to"
      cat "$PWD/../../src/readme-per-directory-addendum.md" >> "$to"
		done
	else
    echo "$LINE_PREFIX Did not find any readme files (RST,TXT,MD) generating just title of Font"

    to_dir="${PWD/$unpatched_parent_dir/$patched_parent_dir}/$filename"
    to="${to_dir}/$infofilename"

    clearDestination "$to_dir" "$to"

    {
      printf "# %s\\n\\n" "$base_directory"
    } >> "$to"

    appendRfnInfo "$config_rfn" "$config_rfn_substitue" "$PWD" "$to"
    cat "$PWD/../../src/readme-per-directory-addendum.md" >> "$to"
	fi

done
