#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0-RC
# Script Version: 2.0.0
# Iterates over all [*] patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# * Only adds non-Windows versions of the fonts
# * Needs the zip archives in archives/ (i.e. run `./archive-fonts.sh` first)
#
# [1] Accepts one parameter, a pattern which fonts to examine, if not given defaults
# to "*" which is all fonts. Example `./generate-casks.sh 'Hasklig'`

#set -x
set -e

version="2.3.0-RC"
homepage="https://github.com/ryanoasis/nerd-fonts"
downloadarchive="https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/"
LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
patched_parent_dir="${scripts_root_dir}/../../patched-fonts/"

cd $patched_parent_dir || {
    echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
    exit 1
}

function clear_file {
    local outputfile=$1
    # clear output file (needed for multiple runs or updates):
    true > "$outputfile" 2> /dev/null
}

function write_header {
    local outputfile=$1
    local caskname=$2

    {
        printf "cask \"%s\" do\\n" "$caskname"
        printf "  version \"%s\"\\n" "$version"
        printf "  sha256 \"%s\"\\n\\n" "$sha256sum"
        printf "  url \"%s%s.zip\"\\n" "$downloadarchive" "$basename"
    } >> "$outputfile"
}

# Query all Family names of a font individually and return the first
# we found that has "Nerd" in it. We need this because some fonts have
# broken Family names.
function find_nerdish_family {
    local fontfile=$1
    local idx=0
    while :; do
        local fn=$(fc-query --format="%{family[${idx}]}" "${fontfile}")
        if [ -z "$fn" ]; then
            return
        fi
        if [[ "${fn}" == *Nerd* ]]; then
            echo "${fn}"
            return
        fi
        idx=$((${idx} + 1))
    done
}

function write_body {
    local unpatchedname=$1
    local outputfile=$2
    shift; shift;
    local fonts=("$@")

    if [ "${fonts[0]}" ]; then
        longest=-1
        # Find longest filename for pretty printing
        for i in "${!fonts[@]}"; do
            basename=$(basename "${fonts[$i]}")
            if [ ${#basename} -gt $longest ]; then
                longest=${#basename}
            fi
        done
        # Find familyname of non Mono variant (well, rather shortest because we can contain multiple families)
        familyname=$(find_nerdish_family "${fonts[0]}")
        for i in "${!fonts[@]}"; do
            fn=$(find_nerdish_family "${fonts[$i]}")
            if [ -z "${fn}" ]; then
                break
            fi
            if [ "${#fn}" -lt "${#familyname}" ]; then
                familyname=${fn}
            fi
        done
        if [ -z "${familyname}" ]; then
            echo >&2 "${LINE_PREFIX} Can not determine family name"
            exit 2
        fi
        # Process font files
        for i in "${!fonts[@]}"; do
            individualfont=$(basename "${fonts[$i]}")
            individualdir=$(dirname "${fonts[$i]}")

            printf "                    %-${longest}s  %s\\n" "${individualfont}" "${individualdir}"

            if [ "$i" == 0 ]; then
                {
                    printf "  name \"%s (%s)\"\\n" "$familyname" "$unpatchedname"
                    printf "  desc \"Developer targeted fonts with a high number of glyphs\"\\n"
                    printf "  homepage \"%s\"" "$homepage"
                    printf "\\n\\n"
                    printf "  livecheck do\\n"
                    printf "    url :url\\n"
                    printf "    strategy :github_latest\\n"
                    printf "  end\\n\\n"
                } >> "$outputfile"
            fi

            printf "  font \"%s\"\\n" "$individualfont" >> "$outputfile"

        done
    else
        echo "$LINE_PREFIX Did not find TTF or OTF"
    fi
}

function write_footer {
    local outputfile=$1

    {
        printf "end\\n"
    } >> "$outputfile"
}

pattern=$1
if [ "$pattern" = "" ]; then
    pattern=".*"
fi

find . -maxdepth 1 -mindepth 1 -type d -iregex "\./$pattern" | sort |
while read -r filename; do

    dirname=$(dirname "$filename")
    basename=$(basename "$filename")
    if [ ! -f "../archives/${basename}.zip" ]; then
        echo "${LINE_PREFIX} No archive for: ${basename}, skipping..."
        continue
    fi
    sha256sum=$(sha256sum "../archives/${basename}.zip" | head -c 64)
    searchdir=$filename

    originalname=$(cat "${scripts_root_dir}/lib/fonts.json" | jq -r ".fonts[] | select(.folderName == "\"${basename}\"") | .unpatchedName" "${scripts_root_dir}/lib/fonts.json")
    caskbasename=$(cat "${scripts_root_dir}/lib/fonts.json" | jq -r ".fonts[] | select(.folderName == "\"${basename}\"") | .caskName" "${scripts_root_dir}/lib/fonts.json")
    if [ -z "$originalname" ]; then
        echo "${LINE_PREFIX} Can not find ${basename} in fonts.json, skipping..."
        continue
    fi

    FONTS=()
    while IFS= read -d $'\0' -r file; do
        FONTS=("${FONTS[@]}" "$file")
    done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' \) -print0 | sort -z)

    outputdir=$PWD/../casks

    echo "$LINE_PREFIX Generating cask for: $basename"

    [[ -d "$outputdir" ]] || mkdir -p "$outputdir"

    caskname="font-${caskbasename}-nerd-font"
    to="$outputdir/${caskname}.rb"

    clear_file "$to"
    write_header "$to" "$caskname"
    write_body "$originalname" "$to" "${FONTS[@]}"
    write_footer "$to"

    echo "## Created casks: $(realpath ${to})"
done
