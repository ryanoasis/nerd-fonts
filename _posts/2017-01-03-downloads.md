---
title: "Fonts Downloads"
short_title: "Fonts"
bg: '#1E5D8A'
color: white
fa-icon: download
page: font-downloads
---

<h1 class="center">Downloads</h1>

<div class="d-flex flex-row flex-wrap align-items-stretch justify-content-betweeen justify-content-aroundd justify-content-center">
{% for font in site.data.fonts.fonts %}
  <div class="item">
      <a href="https://github.com/ryanoasis/nerd-fonts/releases/download/v{{ site.current_version }}/{{ font.unpatchedName }}.zip">
        <div class="download-icon"></div>
        <img src="/assets/img/previews/{{ font.patchedName }} Nerd Font.svg" alt="{{ font.unpatchedName }}" title="Download {{ font.unpatchedName }}">
      </a>
      <ul>
        <li><strong>Info:</strong> {{ font.description }}</li>
      </ul>
      <div>
        <h4 class="inlineblock bg-green border-white text-white nerd-font-button">
          <i class="nf nf-fa-download"></i>
          <a href="https://github.com/ryanoasis/nerd-fonts/releases/download/v{{ site.current_version }}/{{ font.unpatchedName }}.zip" class="inlineblock">Download</a>
        </h4>
        {% if font.linkPreviewFont != false %}
        <h4 class="inlineblock bg-purple border-white text-white nerd-font-button">
          <i class="nf nf-oct-link_external"></i>
          <a href="https://app.programmingfonts.org/#{{ font.linkPreviewFont }}" target="_blank" alt="Full Preview of {{ font.patchedName }} on ProgrammingFonts.org" class="inlineblock">Preview <span>on ProgrammingFonts.org</span></a>
        </h4>
        {% endif %}
      </div>
  </div>
{% endfor %}
</div>

<div class="clear"></div>


<h2 class="center"> Other Download & Install Options </h2>

<h3 class="center"> <span></span> Homebrew </h3>

```sh
brew tap homebrew/cask-fonts &&
brew cask install font-<FONT NAME>-nerd-font
```

<h3 class="center"> :// curl </h3>
<div markdown="1">
```sh
    curl -fLo "<FONT NAME> Nerd Font Complete.otf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/<FONT_PATH>/complete/<FONT_NAME>%20Nerd%20Font%20Complete.otf
```
</div>
<h3 class="center"> <span></span> Bash Install Script </h3>
<div markdown="1">
```sh
./install.sh <FontName>
```
</div>
<h3 class="center"> <span></span> Unofficial Arch User Repository (AUR) </h3>
<div markdown="1" class="center">
See: [Nerd Fonts Packages](https://aur.archlinux.org/packages/?K=nerd-fonts&SB=p)
</div>
