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
      <a href="https://github.com/ryanoasis/nerd-fonts/releases/download/v{{ site.current_version }}/{{ font.folderName }}.zip" class="font-preview" style="background-image: url('/assets/img/previews/{{ font.imagePreviewFont }}.svg')">
      </a>
      {% assign upN = font.unpatchedName | split: " " | join: "" %}
      {% assign pN = font.patchedName | split: " " | join: "" %}
      <div><br>
      {% if font.RFN == true or upN != pN %}
        <strong>&bull; {% if font.RFN == true %}Reserved{% else %}Original{% endif %} Font Name:</strong> {{ font.unpatchedName }}<br>
      {% endif %}
        <strong>&bull; Version:</strong> {{ font.version }}<br>
        <strong>&bull; Info:</strong> {{ font.description }}
      </div>
      <div class="nerd-font-buttons-wrapper">
        <a href="https://github.com/ryanoasis/nerd-fonts/releases/download/v{{ site.current_version }}/{{ font.folderName }}.zip" class="inlineblock bg-green border-white text-white nerd-font-button nf-fa-download">Download</a>
        {% if font.linkPreviewFont != false %}
        <a href="https://www.programmingfonts.org/#{{ font.linkPreviewFont }}" target="_blank" alt="Full Preview of {{ font.patchedName }} on ProgrammingFonts.org" class="inlineblock bg-darkblue border-white text-white nerd-font-button nf-oct-link_external">Preview</a>
        {% endif %}
      </div>
  </div>
{% endfor %}
</div>

<div class="clear"></div>


<h2 class="center"> Other Download & Install Options </h2>

<h3 class="center"> <span></span> Homebrew </h3>
<div align="center" markdown="1">
```sh
brew tap homebrew/cask-fonts &&
brew install --cask font-<FONT NAME>-nerd-font
```
</div>
<p/>
<h3 class="center"> :// curl </h3>
<div align="center" markdown="1">
```sh
curl -fLo "<FONT NAME> Nerd Font Complete.otf" \
https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/<FONT_PATH>/complete/<FONT_NAME>%20Nerd%20Font%20Complete.otf
```
</div>
<p/>
<h3 class="center"> <span></span> Arch Community Repository</h3>
<div markdown="1" class="center">
Search [Nerd Fonts Packages](https://archlinux.org/groups/any/nerd-fonts/) or some special packages in [AUR](https://aur.archlinux.org/packages?K=nerd-fonts-&outdated=off)
</div>
