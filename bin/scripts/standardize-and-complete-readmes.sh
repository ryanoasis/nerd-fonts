#!/usr/bin/env bash
# Nerd Fonts Version: 3.0.2
# Script Version: 1.1.3
# Iterates over all patched fonts directories
# converts all non markdown readmes to markdown (e.g., txt, rst) using pandoc
# adds information on additional-variations and complete font variations

infofilename="README.md"
LINE_PREFIX="# [Nerd Fonts] "
sd="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"
fonts_info="${sd}/lib/fonts.json"
unpatched_parent_dir="${sd}/../../src/unpatched-fonts"
patched_parent_dir="${sd}/../../patched-fonts"

cd "$sd/../../src/unpatched-fonts/" || {
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

if [ $# -ge 1 ]; then
  like_pattern="./$1"
  # allows one to limit to specific font.
  # e.g. with ProFont, DejaVuSansMon, Hasklig, Hack, Gohu, FiraCode, Hermit, etc.
  echo "$LINE_PREFIX Parameter given, limiting find command of directories to pattern '$like_pattern' given"
else
  like_pattern="."
  echo "$LINE_PREFIX No parameter pattern given, generating standardized readmes for all fonts in all font directories"
fi
if [ $# -ge 2 ]; then
  echo "$LINE_PREFIX Using destination '$2'"
  patched_parent_dir="${sd}/../../$2"
fi

find "$like_pattern" -type d |
while read -r filename
do

  if [[ "$filename" == "." ]];
  then
    echo "$LINE_PREFIX Skipping directory '.'"
    continue
  fi

  base_directory=$(echo "$filename" | cut -d "/" -f2)
  searchdir=$base_directory

  # limit looking for the readme files in the parent dir not the child dirs:
  if [ "$dirname" != "." ] && [ -n "$dirname" ];
  then
    searchdir=$dirname
  else
    # reset the variables
    unset config_rfn
    unset config_rfn_substitue
    fontdata=$(jq ".fonts[] | select(.folderName == \"${base_directory}\")" "${fonts_info}")
    if [ "$(echo "$fontdata" | jq .RFN)" = "true" ]
    then
      config_rfn=$(echo "$fontdata" | jq -r .unpatchedName)
      config_rfn_substitue=$(echo "$fontdata" | jq -r .patchedName)
      check_config_rfn=$(tr '[:upper:]' '[:lower:]' <<< "$config_rfn" | tr -d ' ')
      check_config_rfn_sub=$(tr '[:upper:]' '[:lower:]' <<< "$config_rfn_substitue" | tr -d ' ')
      if [ "${check_config_rfn}" = "${check_config_rfn_sub}" ]
      then
        # Only the case with Mononoki and Envy Code R which is RFN but we do not rename (we got the permission to keep the name)
        unset config_rfn
        unset config_rfn_substitue
      fi
    fi
  fi

  mapfile -t RST < <(find "$searchdir" -type f -iname 'readme.rst')
  mapfile -t TXT < <(find "$searchdir" -type f -iname 'readme.txt')
  mapfile -t MD < <(find "$searchdir" -type f -iname 'readme.md')
  outputdir=$patched_parent_dir/$filename/

  echo "$LINE_PREFIX Generating readme for: $filename"

  [[ -d "$outputdir" ]] || mkdir -p "$outputdir"

  to_dir="${patched_parent_dir}/$filename"
  to="${to_dir}/$infofilename"

  if [ "${RST[0]}" ];
  then
    for i in "${RST[@]}"
    do
      echo "$LINE_PREFIX Found RST"
      from="$unpatched_parent_dir/$i"
      clearDestination "$to_dir" "$to"
      pandoc "$from" --from=rst --to=markdown --output="$to"
    done
  elif [ "${TXT[0]}" ];
  then
    for i in "${TXT[@]}"
    do
      echo "$LINE_PREFIX Found TXT"
      from="$unpatched_parent_dir/$i"
      clearDestination "$to_dir" "$to"
      cp "$from" "$to"
    done
  elif [ "${MD[0]}" ];
  then
    for i in "${MD[@]}"
    do
      echo "$LINE_PREFIX Found MD"
      from="$unpatched_parent_dir/$i"
      clearDestination "$to_dir" "$to"
      cp "$from" "$to"
    done
  else
    echo "$LINE_PREFIX Did not find any readme files (RST,TXT,MD) generating just title of Font"
    clearDestination "$to_dir" "$to"
    {
      printf "# %s\\n\\n" "$base_directory"
    } >> "$to"
  fi
  appendRfnInfo "$config_rfn" "$config_rfn_substitue" "$sd" "$to"
  cat "$sd/../../src/readme-per-directory-addendum.md" >> "$to"

done
