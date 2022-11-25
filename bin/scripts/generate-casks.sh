#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0-RC
# Script Version: 1.0.1
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# only adds non-Windows versions of the fonts

#set -x
set -e

version="2.3.0-RC"
patched_parent_dir="../../patched-fonts/"
homepage="https://github.com/ryanoasis/nerd-fonts"
downloadarchive="https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/"
LINE_PREFIX="# [Nerd Fonts] "

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

function write_body {
    local outputfile=$1
    shift;
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
        # Process font files
        for i in "${!fonts[@]}"; do
            individualfont=$(basename "${fonts[$i]}")
            individualdir=$(dirname "${fonts[$i]}")

            printf "                    %-${longest}s  %s\\n" "${individualfont}" "${individualdir}"

            if [ "$i" == 0 ]; then
                familyname=$(fc-query --format='%{family}' "${fonts[$i]}")
                {
                    printf "  name \"%s (%s)\"\\n" "$familyname" "$basename"
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

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 2 -type d | # uncomment to test 1 font
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

    MONOFONTS=()
    while IFS= read -d $'\0' -r file; do
        MONOFONTS=("${MONOFONTS[@]}" "$file")
    done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' -iname '*complete mono*' \) -print0 | sort -z)

    FONTS=()
    while IFS= read -d $'\0' -r file; do
        FONTS=("${FONTS[@]}" "$file")
    done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' ! -iname '*complete mono*' \) -print0 | sort -z)

    outputdir=$PWD/../casks

    formattedbasename=$(echo "$basename" | tr "[:upper:]" "[:lower:]")

    echo "$LINE_PREFIX Generating cask for: $basename"

    [[ -d "$outputdir" ]] || mkdir -p "$outputdir"

    caskname="font-$formattedbasename-nerd-font"
    caskname_mono="${caskname}-mono"
    to="$outputdir/${caskname}.rb"
    to_mono="$outputdir/${caskname_mono}.rb"

    clear_file "$to"
    write_header "$to" "$caskname"

    clear_file "$to_mono"
    write_header "$to_mono" "$caskname_mono"

    write_body "$to" "${FONTS[@]}"
    write_body "$to_mono" "${MONOFONTS[@]}"

    write_footer "$to"
    write_footer "$to_mono"

    echo "## Created casks: $(realpath ${outputdir}/${caskname})*.rb"
done
