<h1 align="center">
  <img src="images/nerd-fonts-logo.svg" alt="Nerd Fonts Logo" />
</h1>

[![GitHub release][img-version-badge-with-logo]][repo]&nbsp;[![Gitter][img-gitter-badge]][gitter]&nbsp;[![CodeClimate][img-code-climate-badge]][code-climate]&nbsp;[![Code of Conduct][coc-badge]][coc]&nbsp;[![PRs Welcome][prs-badge]][prs]&nbsp;&nbsp;&nbsp;[![Windows Logo][w-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![macOS (OSX) Logo][m-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![Linux Logo][l-top]](#patched-fonts)


**Nerd Fonts** 是一個使用大量字體圖示來解決程式設計師在開發過程中缺少合適字體的問題的專案。它可以從流行的字體圖示庫中將大量外部字體引入待開發的專案中，它支持的字體圖示庫包括 [Font Awesome ➶][font-awesome], [Devicons ➶][vorillaz-devicons], [Octicons ➶][octicons], and [others](#glyph-sets).

下面的[桑基圖（Sankey Diagram）](https://en.wikipedia.org/wiki/Sankey_diagram)展示了Nerd Fonts中現有的字形組合：

<p align="center">
  <img src="https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/custom-sankey-glyphs-combined-diagram.png" alt="@SankeyMATIC Diagram" />
</p>
<sub><i>創建圖表的工具為： <a href="http://sankeymatic.com/" title="SankeyMATIC (BETA): A Sankey diagram builder for everyone">@SankeyMATIC</a></i></sub>


## 快速導航

| **[Latest Release ➶][release]** | **[Fonts](#patched-fonts)** | **[Patcher](#font-patcher)** | **[VimDevIcons ➶][vim-devicons]** | **[Font Package <br/>Downloads ➶][release]** |
|:-------------------------------:|:---------------------------:|:----------------------------:|:---------------------------------:|:--------------------------------------------:|
| [![fonts-logo-small][ql-1]][release] | [![fonts-logo-small][ql-2]](#patched-fonts) | [![patcher-logo-small][ql-3]](#font-patcher) | [![vim-devicons-logo-small][ql-4]][vim-devicons] | [![fonts-logo-small][ql-5]][release] |


## 重要提示
* `master` 分支的文件路徑 **不穩定！** [驗證你的 repository URI references](#unstable-file-paths)
* 除非你想成為[開發貢獻者](#contributing)，不然最好**不要**複製這個 repository。


## 目錄

[**TL;DR**](#tldr)

[**安裝選項**](#font-installation)
  * [**1 - 手動**](#option-1-download-and-install-manually)
  * [**2 - 下載發佈存檔**](#option-2-release-archive-download)
  * [**3 - 安裝腳本**](#option-3-install-script)
  * [**4 - Homebrew Fonts (macOS (OS X))**](#option-4-homebrew-fonts)
  * [**5 - 複製 Repo**](#option-5-clone-the-repo)
  * [**6 - Ad Hoc Curl 下載**](#option-6-ad-hoc-curl-download)
  * [**7 - Arch User Repository (AUR) (Arch Linux)**](#option-7-unofficial-arch-user-repository-aur)
  * [**8 - 你自己的字體補丁**](#option-8-patch-your-own-font)

[**特征**](#features)
  * [**Glyph/Icon sets**](#glyph-sets)
  * [**Patched Fonts**](#patched-fonts)
  * [**Combinations**](#combinations)
  * [**Font Patcher**](#font-patcher)

[**開發者 / 貢獻者**](#font-patcher)
  * [**Font Patcher**](#font-patcher)
  * [**Gotta Patch 'em All Font Patcher!**](#gotta-patch-em-all)
  * [**Other Good Fonts to Patch**](#other-good-fonts-to-patch)
  * [**Contributing**](#contributing)

[**專案的目的**](#project-motivation)

**附加訊息**
  * [**master中不穩定的文件路徑**](#unstable-file-paths)
  * [**更新日誌**](#changelog)
  * [**證書**](#license)


## TL;DR
  Nerd Fonts 中包含流行的程式字體和字形。
  如果你想要的字體沒有在現有的字體庫中，你可以使用 [font patcher](#font-patcher)來自訂字體。
  更多信息請見 [wiki][wiki]。如果你正在尋找Vim外掛，請見 [VimDevIcons ➶][vim-devicons]。

### 多種字體下載選項

_如果你..._

  * `選項 1.` 需要**快速**從[`patched-fonts/` directory](#patched-fonts)下載一個 **獨立字體**
  * `選項 2.` 需要去下載包含粗體、斜體等等一系列字體的 **字體家族**，請見 [下載檔案](#option-2-release-archive-download)
  * `選項 3.` 需要**自動安裝**或使用**腳本**，請見 [安裝腳本](#option-3-install-script)
  * `選項 4.` 是**macOS**的使用者，並且想要使用**Homebrew**，請見 [Homebrew Fonts](#option-4-homebrew-fonts)
  * `選項 5.` 想要 **完全控制**，請見 [複製這個 repo](#option-5-clone-the-repo)
  * `選項 6.` 想要使用 **`curl` command** 或者使用 **scripts**，請見 [Ad Hoc Curl 下載](#option-6-ad-hoc-curl-download)
  * `選項 7.` 是**Arch Linux**的使用者，並且想要使用**AUR packages**，請見 [Unofficial Arch User Repositories](#option-7-unofficial-arch-user-repository-aur)
  * `選項 8.` 想要打包你自訂的字體，請見 [字體補丁](#option-8-patch-your-own-font)

## 特征
* [FontForge Python script](#font-patcher) 可以打包任何字體
  * 包括建立**Monospaced (fixed-pitch, fixed-width)** _或者_ **double-width (non-monospaced)** 字形
  * 更多詳情請見 [**Font Patcher**](#font-patcher) 段落
* **`50`** 已經 [打包了字體家族](#patched-fonts)
* Over **`1,571,470`** 獨立的 組合/變型 字體 [(更多詳情)](#combinations)
* Over **`1,300`** 字形/圖示 組合 [(更多詳情)](#combinations)
  * 當前的字形集包括： [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome],  [Devicons][vorillaz-devicons], [Octicons][octicons], [Font Logos][font-logos], [Pomicons][gabrielelana-pomicons]
* 每種字體的**Monospaced (fixed-pitch, fixed-width)** _和_ **double-width (non-monospaced)** 版本
  * 這指的是Nerd Font字形本身，並不一定需要將字體作為一個整體考慮
* 一個 開發者/貢獻者提供了 [bash script](#gotta-patch-em-all) 來為所有字體再打包


## 字形集

:mag: :mag: 你現在可以透過[NerdFonts.com][Cheat Sheet]中的[Cheat Sheet][]對字形進行搜索

### Seti-UI + 自訂
> 基於 [Seti-UI] Icomoon 的額外自訂字形。

![image](images/fontforge-glyph-set-1.png)

### [Devicons][vorillaz-devicons]
> 一個為開發者，code jedis，ninjas，HTTPsters，evangelists 和 nerds(sic)制作的圖示字體。 / ([repo][vorillaz-devicons]) / ([website](https://vorillaz.github.io/devicons/))

![image](images/fontforge-glyph-set-2.png)

### [Font Awesome][font-awesome]
> 字體圖示和 CSS 工具包。 / ([repo][font-awesome]) / ([website](http://fontawesome.io/))

![image](images/fontforge-glyph-set-font-awesome-1.png)
![image](images/fontforge-glyph-set-font-awesome-2.png)
![image](images/fontforge-glyph-set-font-awesome-3.png)
![image](images/fontforge-glyph-set-font-awesome-4.png)

### [Font Awesome Extension][font-awesome-extension]
> 簡單的 Font Awesome 補充包。 / ([repo][font-awesome-extension]) / ([website](https://andrelzgava.github.io/font-awesome-extension/))

![image](images/fontforge-glyph-set-font-awesome-extension-1.png)

### [Octicons][octicons]
> GitHub's 圖示. / ([repo][octicons]) / ([website](https://octicons.github.com))

#### Nerd Font Complete Codepoints:*

![image](images/fontforge-glyph-set-octicons.png)

<sub>* To avoid conflicts between icon sets, these were modified in the 'Complete' fonts. To view the original codepoints see the [Wiki](https://github.com/ryanoasis/nerd-fonts/wiki/Codepoint-Conflicts).</sub>

### [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
> 提供額外的 Powerline separator 字體 和 a column number glyph (CN). / ([repo][ryanoasis-powerline-extra-symbols])

![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

### [IEC Power Symbols][website-iecpower]
> 向Unicode中加入新符號  / ([website][website-iecpower])

![image](images/fontforge-glyph-set-font-iec-power-1.png)
![image](images/fontforge-glyph-set-font-iec-power-2.png)

### [Font Logos][font-logos]
> Font-logos 是一個包含LOGO和linux流行布局的圖示字體。 / ([repo][font-logos])

![image](images/fontforge-glyph-set-font-logos.png)

### [Pomicons][gabrielelana-pomicons]
> 8 個符號 ["Pomodoro Technique"®](https://cirillocompany.de/pages/pomodoro-technique). / ([repo][gabrielelana-pomicons])

![image](images/fontforge-glyph-set-pomicons.png)

### Shell中的Icon 名稱

從[bin/scripts/lib/](bin/scripts/lib/)路徑中下載 `.sh` 文件, 推薦的文件位置為 `~/.local/share/fonts/` 或者 `~/bin/`.

- `i_all.sh` - 幫助你載入你下載的所有文件
- `i_dev.sh` - Devicons (198 icons, 8 does not have an established name)
- `i_fa.sh` - Font Awesome (675 icons, 111 aliases)
- `i_fae.sh` - Font Awesome Extension (170 icons)
- `i_iec.sh` - IEC Power Symbols (5 icons)
- `i_logos.sh` - Font Logos (20 icons)
- `i_oct.sh` - Octicons (172 icons)
- `i_ple.sh` - Powerline Extra Symbols (37 icons, 2 aliases, 16 does not have an established name)
- `i_pom.sh` - Pomicons (11 icons)
- `i_seti.sh` - Seti-UI + Custom (50 icons, 2 aliases, 5 does not have an established name)

然後 `source` 所需的文件並且輸出 `$i_*` variables 去尋找字體：

```sh
source ~/.local/share/fonts/i_oct.sh
echo $i_oct_heart
# Output:
# ♥
```

**NOTE:** You have to use one of the Nerd Fonts to see correct icons for some icon sets (Devicons, Font Awesome Extension, Font Logos), but other sets should work with their standard fonts too.


## 字體補丁

| Font Name                                         | Font Name and Repository          |\*RFN | EM Size | Status            |
|:--------------------------------------------------|:----------------------------------|:-----|:--------|:------------------|
| [3270 Nerd Font][p-3270]                          | [3270][f-3270]                    | NO   | 1000    | ![w2] ![m2] ![l2] |
| [Anonymice Nerd Font][p-anonymous-pro]            | [Anonymous Pro][f-a-pro]          | NO   | 2048    | ![w] ![m2] ![l]   |
| [Aurulent Sans Mono Nerd Font][p-aurulent]        |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Bitstream Vera Sans Mono Nerd Font][p-bitstream] |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [Code New Roman Nerd Font][p-code-nr]             |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [DejaVu Sans Mono Nerd Font][p-dejavu]            |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [Droid Sans Mono Nerd Font][p-droid]              |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [Fantasque Sans Nerd Font][p-fantasque]           | [Fantasque Sans][f-fant]          | NO   | 2048    | ![w] ![m2] ![l]   |
| [Fura Code Nerd Font][p-fira-code]                | [Fira][f-fira-code]               | YES  | 1000    | ![w] ![m2] ![l]   |
| [Fura Mono Nerd Font][p-fira-mono]                | [Fira][f-fira-mono]               | YES  | 1000    | ![w] ![m2] ![l]   |
| [Gohu Nerd Font][p-gohu]                          | [Gohu][f-gohu]                    | NO   | 1000    | ![w2] ![m2] ![l2] |
| [Hasklug Nerd Font][p-hasklig]                    | [Hasklig][f-hasklig]              | YES  | 1000    | ![w] ![m2] ![l]   |
| [Heavy Data Mono Nerd Font][p-heavy-data]         |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [Hermut Nerd Font][p-hermit]                      |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Nerd Font][p-inconsolata]            |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Go Nerd Font][p-inconsolata-go]      |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Iosevka Nerd Font][p-iosevka]                    | [Iosevka][f-iosevka]              | YES  | 1000    | [#83][s-iosevka]  |
| [JetBrains Mono][p-jetbrains-mono]                | [JetBrains Mono][f-jetbrains-mono]| NO   | 1000    | ![w] ![m2] ![l]   |
| [Knack Nerd Font][p-hack]                         | [Hack][f-hack]                    | YES  | 2048    | ![w] ![m2] ![l]   |
| [Lekton Nerd Font][p-lekton]                      |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Literation Mono Nerd Font][p-liberation]         | [Liberation][f-liberation]        | YES  | 2048    | ![w] ![m2] ![l]   |
| [Meslo Nerd Font][p-meslo]                        |                                   | NO   | 2048    | ![w] ![m2] ![l]   |
| [Monofur Nerd Font][p-monofur]                    |                                   | NO   | 2400    | ![w] ![m2] ![l]   |
| [Monoid Nerd Font][p-monoid]                      |                                   | NO   | 1536    | ![w] ![m2] ![l]   |
| [Mononoki Nerd Font][p-mononoki]                  | [Mononoki][f-mononoki]            | NO   | 1024    | ![w] ![m2] ![l]   |
| [M+ (MPlus) Nerd Font][p-mplus]                   |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [ProFont (Windows tweaked) Nerd Font][p-profont]  |                                   | NO   | 1200    | ![w] ![m2] ![l]   |
| [ProFont (x11) Nerd Font][p-profont]              |                                   | NO   | 1000    | [FAILING]         |
| [ProggyClean Nerd Font][p-proggy-clean]           |                                   | NO   | 2048    | [FAILING]         |
| [Roboto Mono][p-roboto]                           |                                   | NO   | 2048    | [FAILING]         |
| [Sauce Code Nerd Font][p-source-code-pro]         | [Source][f-source]                | YES  | 1000    | ![w] ![m2] ![l]   |
| [Shure Tech Mono Nerd Font][p-share-tech-mono]    | [Share Tech Mono][f-share]        | YES  | 1000    | ![w] ![m2] ![l]   |
| [Space Mono Nerd Font][p-space-mono]              | [Space Mono][f-space]             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Terminess Nerd Font][p-terminus]                 | [Terminus Font][f-terminus]       | YES  | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Nerd Font][p-ubuntu]                      |                                   | NO   | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Mono Nerd Font][p-ubuntu-mono]            |                                   | NO   | 1000    | ![w] ![m2] ![l]   |

<sub>_*RFN = Reserved Font Name_</sub>

## 字體集

- 超過 **`1,485,000個`** 獨立的 變化/組合(Power Set)字體包：
  - **`50個`** 字體合集
  - **`719個`** 字體家族
  - **`2,876個`** ‘完全’的 變化/組合字體
  - **`1,485,410個`** _有可能的_ 變化/組合字體
  - **`1,488,286個`** 總字體數 (2,876 + 1,485,410)
- 每種字體的組合都是任意 [Variations](#variations)的組合

### Variations

- no flags given (defaults to only **Seti-UI + Custom** and **[Devicons][vorillaz-devicons]**)
- **double _(variable/proportional)_** or **single _(fixed/monospaced)_** width glyphs
- [Font Awesome][font-awesome]
- [Font Awesome Extension][font-awesome-extension]
- [GitHub Octicons][octicons]
- [Font Logos][font-logos]
- [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
- [IEC Power Symbols][website-iecpower]
- [Pomicons][gabrielelana-pomicons]
- Windows Compatibility（Windows 相容性）


## 字體安裝

### `選項1: 手動下載並安裝`

> 安裝特定 **單獨字體** 的**最快**方法。

下載你選中的特定字體 [patched font](#patched-fonts)

### `選項2: 下載發佈存檔`

> 適用於當你需要**archive**或者完整的**字體家族**(Bold, Italic, etc.)的情況。

你可以以壓縮檔的形式從[latest release](https://github.com/ryanoasis/nerd-fonts/releases/latest)下載所需的字體

### `選項3: 安裝腳本`

> 適用於當你想要 **自動** 安裝或者使用 **scripts** 的情況。

_註_: 僅適用於 Linux & macOS (OS X)
_註_: **Requires cloning** the repo as of now

#### 所有字體：

* 安裝全部的字體包 (_警告：字體的數量眾多，需要下載的文件體積巨大_)

```sh
./install.sh
```

#### 單獨字體:

* 安裝你所需的單獨字體

```sh
./install.sh <FontName>
./install.sh Hack
./install.sh HeavyData
```

### `選項4: Homebrew 字體`

> 適用於 **macOS系統**的**Homebrew**使用者。

所有字體都可以透過 [Homebrew 字體](https://github.com/caskroom/homebrew-fonts) 從 macOS (OS X)平台上找到

```sh
brew tap caskroom/fonts
brew install --cask font-hack-nerd-font
```

### `選項5: 複製 Repo`

> 適用於要使用 **完全控制**, **所有** 或者 **多數** 字體的情況，或者為Nerd Fonts的開發 **盡一份力**的情況。

基於效率考慮，如果你只想使用有限的幾種字體，我們**不推薦**複製這個 repository。

但是如果你想要複製這個repo，請確認你_shallow_複製了它：
```sh
git clone --depth 1
```

### `選項6: Ad Hoc Curl 下載`

> 適用於當你想要使用 **`curl` command** 或者在 **scripts**中使用它的情況。

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

_註:_ deprecated alternative paths: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

### `選項7: 非官方 Arch User Repository (AUR)`

> 適用於 **Arch Linux** 下使用 **AUR packages**的情況

下列字體可以在Arch Linux透過 [AUR packages](https://aur.archlinux.org/) 下載：

* [Nerd Fonts Complete Release (double-width)](https://aur.archlinux.org/packages/nerd-fonts-complete/)
* [Nerd Fonts Complete Release (single-width) (out of date)](https://aur.archlinux.org/packages/nerd-fonts-complete-mono-glyphs/)
* [Nerd Fonts Complete Git (has always the newest fixes)](https://aur.archlinux.org/packages/nerd-fonts-git/)

* [Nerd Fonts Anonymous Pro](https://aur.archlinux.org/packages/nerd-fonts-anonymous-pro/)
* [Nerd Fonts DejaVu Complete](https://aur.archlinux.org/packages/nerd-fonts-dejavu-complete/)
* [Nerd Fonts Fira Code](https://aur.archlinux.org/packages/nerd-fonts-fira-code/)
* [Nerd Fonts Go Mono](https://aur.archlinux.org/packages/nerd-fonts-go-mono/)
* [Nerd Fonts Hack](https://aur.archlinux.org/packages/nerd-fonts-hack/)
* [Nerd Fonts Inconsolata](https://aur.archlinux.org/packages/nerd-fonts-inconsolata/)
* [Nerd Fonts Jetbrains Mono](https://aur.archlinux.org/packages/nerd-fonts-jetbrains-mono)
* [Nerd Fonts Liberation Mono](https://aur.archlinux.org/packages/nerd-fonts-liberation-mono/)
* [Nerd Fonts Noto](https://aur.archlinux.org/packages/nerd-fonts-noto/)
* [Nerd Fonts Source Code Pro Complete](https://aur.archlinux.org/packages/nerd-fonts-source-code-pro/)
* [Nerd Fonts Terminus](https://aur.archlinux.org/packages/nerd-fonts-terminus/)
* [Nerd Fonts Victor Mono](https://aur.archlinux.org/packages/nerd-fonts-victor-mono)

The list is not complete, but you can [search for a complete list here](https://aur.archlinux.org/packages?K=nerd-fonts-&outdated=off).

### `選項8: 打包你的個人字體`

> 適用於 **patching** 你的 **個人字體** 或者完全 **自訂** 字體補丁。

在你的個人字體中使用 Python 命令行腳本去增加新的字形並生成字體包

請見: [Font Patcher](#font-patcher) 的使用方法

* 這個選項適用於當你 __不想__ 使用 [fonts provided](#patched-fonts)的情況
* 你需要複製已經生成好的字體到你系統中正確的字體資料夾中


<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</h2>

可以透過[VimDevIcons ➶][vim-devicons]打包你選中的字體:
* 需要: Python 2 (or Python 3), python-fontforge package (version 20141231 或者更新版本，請見 [安裝說明](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* OSX上的替代安裝方法為: `brew install fontforge`
* 使用:

```
./font-patcher PATH_TO_FONT
```

* 替代方案: 使用script flag透過FontForge binary來執行打包:

```
./fontforge -script font-patcher PATH_TO_FONT
```


```
usage: font-patcher [-h] [-v] [-s] [-l] [-q] [-w] [-c] [--careful]
                    [--removeligs] [--postprocess [POSTPROCESS]]
                    [--configfile [CONFIGFILE]] [--custom [CUSTOM]]
                    [-ext [EXTENSION]] [-out [OUTPUTDIR]]
                    [--glyphdir [GLYPHDIR]] [--makegroups]
                    [--variable-width-glyphs]
                    [--progressbars | --no-progressbars] [--also-windows]
                    [--fontawesome] [--fontawesomeextension] [--fontlogos]
                    [--octicons] [--codicons] [--powersymbols] [--pomicons]
                    [--powerline] [--powerlineextra] [--material] [--weather]
                    font

Nerd Fonts Font Patcher: patches a given font with programming and development related glyphs

* Website: https://www.nerdfonts.com
* Version: 2.2.2
* Development Website: https://github.com/ryanoasis/nerd-fonts
* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md

positional arguments:
  font                  The path to the font to patch (e.g., Inconsolata.otf)

optional arguments:
  -h, --help            顯示幫助訊息和退出
  -v, --version         顯示程式版本和退出
  -s, --mono, --use-single-width-glyphs
                        設置生成的字體是single-width還是double-width (預設是 double-width)
  -l, --adjust-line-height
                        設置是否調整 line heights (一般應該嘗試 center powerline separators)
  -q, --quiet, --shutup
                        不生成 verbose output
  -w, --windows         將內部字體名稱限制在31個符號內 (為了 Windows 相容性)
  -c, --complete        加入所有可用的字體
  --careful             如果發現了已經存在的字形，不要對它進行覆寫
  --removeligs, --removeligatures
                        Removes ligatures specificed in JSON configuration file
  --postprocess [POSTPROCESS]
                        指定一個針對後續處理程式的腳本
  --configfile [CONFIGFILE]
                        Specify a file path for JSON configuration file (see sample: src/config.sample.json)
  --custom [CUSTOM]     指定一個自訂圖示字體，所有新字形都會在不縮放的情況下被複製。
  -ext [EXTENSION], --extension [EXTENSION]
                        更改字體文件的文件格式去創建新文件 (e.g., ttf, otf)
  -out [OUTPUTDIR], --outputdir [OUTPUTDIR]
                        將修補後的字體文件輸出到特定目錄
  --glyphdir [GLYPHDIR]
                        Path to glyphs to be used for patching
  --makegroups          Use alternative method to name patched fonts (experimental)
  --variable-width-glyphs
                        Do not adjust advance width (no "overhang")
  --progressbars        顯示每個Glyph Set的完成度進度條
  --no-progressbars     不顯示每個Glyph Set的完成度進度條
  --also-windows        Create two fonts, the normal and the --windows version

Symbol Fonts:
  --fontawesome         加入 Font Awesome Glyphs字體 (http://fontawesome.io/)
  --fontawesomeextension
                        加入 Font Awesome 補充字體 (https://andrelzgava.github.io/font-awesome-extension/)
  --fontlogos, --fontlinux
                        加入 Font Logos 字體 (https://github.com/Lukas-W/font-logos)
  --octicons            加入 Octicons 字體 (https://octicons.github.com)
  --codicons            Add Codicons Glyphs (https://github.com/microsoft/vscode-codicons)
  --powersymbols        加入 IEC Power Symbols (https://unicodepowersymbol.com/)
  --pomicons            加入 Pomicon 字體 (https://github.com/gabrielelana/pomicons)
  --powerline           加入 Powerline 字體
  --powerlineextra      加入 Powerline 字體 (https://github.com/ryanoasis/powerline-extra-symbols)
```

#### 例子

	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf -s -q
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --use-single-width-glyphs --quiet
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf -w
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --windows --quiet
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --windows --pomicons --quiet
	./font-patcher Inconsolata.otf --fontawesome
	./font-patcher Inconsolata.otf --fontawesome --octicons --pomicons
	./font-patcher Inconsolata.otf


<a name="gotta-patch-em-all"></a>
## Gotta Patch 'em All Font Patcher!

* 針對貢獻者和開發者使用

* 在未打包的路徑中re-patches **所有** 字體:
```
./gotta-patch-em-all-font-patcher\!.sh
```

* 可以選擇限制到特定字體名稱模式:
```
./gotta-patch-em-all-font-patcher\!.sh Hermit
```


## 貢獻

See [contributing.md](contributing.md)


## 不穩定的文件路徑

:warning: 警告: 基於後續的新版本發佈，文件路徑有可能被改變 (特別是 **major** version bumps)

注意 **release** 分支 _不是_  ~~master分支~~因為路徑會因為新版本發佈而改變

* 舉例:
  * :white_check_mark: Use: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<b>0.9.0</b>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>
  * :x: Instead of: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<del>master</del>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>


## 其他的好字體

* 一個包含更多好字體的列表，可惜的是，因為授權問題我們不能提供或分享它們:
 * [Input Mono][input-mono] (license restriction)
   * Possibly coming with external hosting :)
 * [PragmataPro][pragmatapro] (not free)
 * [Consolas][consolas] (proprietary)


## 專案目的

See [Wiki: Project Purpose][wiki-project-purpose]


## 更新日誌

See [changelog.md](changelog.md)

## 授權

[MIT](LICENSE) © Ryan L McIntyre

<!--
Repo References
-->

[vim-devicons]:https://github.com/ryanoasis/vim-devicons "VimDevIcons Vim Plugin (external link) ➶"
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[font-awesome-extension]:https://github.com/AndreLZGava/font-awesome-extension
[octicons]:https://github.com/primer/octicons
[font-logos]:https://github.com/Lukas-W/font-logos
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[wiki]:https://github.com/ryanoasis/nerd-fonts/wiki
[wiki-project-purpose]:https://github.com/ryanoasis/nerd-fonts/wiki/Project-Purpose
[repo]:https://github.com/ryanoasis/nerd-fonts
[gitter]:https://gitter.im/ryanoasis/nerd-fonts
[code-climate]:https://codeclimate.com/github/ryanoasis/nerd-fonts

<!--
Website References
-->

[website-iecpower]:https://unicodepowersymbol.com/
[Cheat Sheet]:https://nerdfonts.com/cheat-sheet

<!--
Link References
-->

[badge-version]:https://badge.fury.io/gh/ryanoasis%2Fnerd-fonts
[badge-gitter]:https://gitter.im/ryanoasis/nerd-fonts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

[img-version-badge-with-logo]:https://img.shields.io/github/release/ryanoasis/nerd-fonts.svg?style=flat-square&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAEAAAAAeCAYAAACc7RhZAAAABmJLR0QA%2FwD%2FAP%2BgvaeTAAAACXBIWXMAABJ0AAASdAHeZh94AAAAB3RJTUUH4AsTAw4JCvVTMQAABhNJREFUWMPtmX2MnFUVxs%2BdmZ3dYit0DaQKVfmwLaAxRQhIaqKpaCBSkCbQAkEUY0KFxFAkAomdaDeCCuJHqgQCQvnQjYABJEZJs2AhDS4xCIvgaDutsFmWmTLs7sz7dc%2Fv%2Bgd3zJvJu7O73bF2iTfZ7Mw79557nueee%2B5z7ivy%2F7Zwmqp%2BFRgBGoAFqsAu4HZVvTwMw%2BPelcCbzeb7gSeccw5QoO6macBuYJu1dt3Y2NhhCx68tfYc4E0P7o9RFJ1QLpeLqnop8BfXoQEB8JiqXlar1ZYsKOCjo6OLgJ%2B1Vl1VbyyVSiaDoLOAJzuQ8CKQAG%2Br6jXt482hCD5JktPy%2Bfx2Y8xK51wIXFIoFB6eYczp%2BXx%2BwBizVkTEOTcpIvtEJBaRpv%2BrOeeeE5E%2BEdmTz%2Bd%2FdUgBHxwczAFbgMSvXsNa%2B%2BnZjK1UKr1JkpwJ3AfsAP4KhB0iIxoeHi5IHMerVfU6a%2B0Xp6amjvpfEgDclnKwYa39zHR9a7XaEmvtOuBmYGcnsG3A3wT%2B7JxztVptiajqxtSPU8D3G43GsoMNvlQqGaDh%2FYittZ%2FP6hdF0QrgDmA%2FMAS8nfLf%2Bj3%2FMHCTqm4GbgO2AQNADLwM7AH%2B1Uoi506TPX8eRdEJB5mAt3gn421s%2F71cLhc9iBqwHXgQmAT2AT%2B01p6dlekrlUovMAiMAb9PYfydiIiJomhlsVh8Jcsp5xwi8oiq3trT0%2FNsJwDj4%2BPvWbp06epcLrfKGHO0iBwlIv0iskREFolIr4gURCQnIioiiYg0RGRCRMacc3tFJOece7lQKDzRluDOyOfz20TknyISicg5IvIocPfWrVufLpVKbqbcsn79%2Bq8bYzYYY8702L6Ty%2BW2tPbemFdUj7VFggL%2FAP4O7LLWXpAWJ6p6CfAL4AUffuqFyC7gGR9qs9qbqTnHgSFV%2FbaqfgP4A%2B%2B0Ma8AH5iamjryABPsZGueOI4%2F9p9jELhXRC4IguD4vr6%2Bi4wxtxhjCqlIeFVEHhWRk0TkAyLSZ4w50TkXiMiQc26nX83DjTGrROQUEfmIMSbnnLP%2BKApFpCoi4%2F7%2FlIgcISKrfcTM2Jxzcb1eP7K%2Fv39irgREUbSiWCy%2B6u08n8vlTk2LifM9%2B9%2F1mnsDoBmr81tr7ReAHaq6WVWvBR5p7V3gSVX9chzHH200GssqlUrvbJwLguCDqropndCmiY7n56Eo17bsqOrFWQnmDaAZBMFyT8IVgM1wIgSabc8Goyg6sRvFzgwE%2FGYeti%2FyNl4fHh4uZHX4GhCq6hXpyACCDEde8pFQUdUbu6j7z8qYazIljAbmQcAmb%2BMHc5Wla4DxDMfUOeeiKFrVxXJ3U8r%2B42EYHu%2BJWeefPTRXm5VKpbderx8B%2FMiH%2F1fm7FgQBMuB57LCspVNu6QE7%2FFAx0ZHRxel5j%2FGP39raGgoP0dSb1DVbwEjzjmXJMmpB%2BScFxS3txOQJMmaLhKw1wO9uT1HtebrJI8zwG8EGqp6vbe7N6uinGuYXpi%2BkLDWntsN8FEUrUqR%2BokMcnZ7ENtnc%2BS1VJ%2BXvkNZxM7H2RWt5Kiql3dp%2F1%2FnnfzbNNFxS0vvJ0lyegc732yJLy%2FEnvKfk65Ke%2BBuT8DmeRC5Evj1yMhID7Crk71Go7EMmPBgRuM4%2FnhGwj7D3xkOqOqVwJ9SSfWmrl9QHqjharW62JexMfBCHMcnt4qwycnJ93U4Js9LHYkR8NMkSdbU6%2FXDR0ZGesIw%2FJCqXgbsSAGPgYF57%2F3plBXwy7kKEuA1P7bsV%2FYu%2F%2F3HszyWn5lFTREC98VxfPJ%2FpXwNw%2FBYP9HO2fSP4%2FiktpUZDoLgGFX9Umu%2FVqvVxXNYgPW%2B9m96GV4HnlbVq6y1n5uYmOg%2FGDc4u4Gw2WwePYu%2B96dC8idenHzPV5FRkiSfWogvKm5oXVfv37%2F%2FvTNEwGpVvdpa%2B1mgBLzux6KqGxbknb1PZns8kH3AliRJPhkEwfJqtbo4CILl1tq1vq6%2FtyV0UtugYq09f0G%2FuAjD8NjpZHKHC4%2BHVPXicrlclHdDK5VKxlp7NnAr8Kx%2FEQEw6r%2FfqaobwjD88KHm%2B78BVBigctRUCFcAAAAASUVORK5CYII%3D
[img-gitter-badge]:https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat-square
[img-code-climate-badge]:https://img.shields.io/codeclimate/github/ryanoasis/nerd-fonts.svg?style=flat-square
[coc-badge]: https://img.shields.io/badge/code%20of-conduct-ff69b4.svg?style=flat-square
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAACWFBMVEXXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWko2FeWCAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAAI28AACNvATX8B%2FsAAAAHdElNRQfhBQMBMCLAfV85AAAAi0lEQVQ4y2NgIBYszkPmJc5ORZE9DgEJqNxmmPS%2B43AA4h5B5TIwbD5%2BHFnoKCoXYSBMBIW7CF0eAxChoPM4ARXHB4GCZEIKKA8H%2FCoWE1LAwIBfBVp6wQA1DPhVzMJMcyggCVuqxGI%2FLhWY6Z6QPKoK7HmHkDwDwxYC8gwMdSDprXiz6PHjpQxUBgCLDfI7GXNh5gAAAABJRU5ErkJggg%3D%3D

[consolas]:https://www.microsoft.com/typography/fonts/family.aspx?FID=300
[input-mono]:http://input.djr.com/download/
[pragmatapro]:https://www.fsd.it/shop/fonts/pragmatapro/

[release]:https://github.com/ryanoasis/nerd-fonts/releases/latest "Latest Release (external link) ➶"
[coc]:https://github.com/ryanoasis/nerd-fonts/blob/master/code_of_conduct.md "Contributor Covenant Code of Conduct"
[prs]:http://makeapullrequest.com "Make a Pull Request (external link) ➶"

<!--
Font repos
-->

[f-hack]:https://github.com/chrissimpkins/Hack
[f-a-pro]:https://www.marksimonson.com/fonts/view/anonymous-pro
[f-3270]:https://github.com/rbanffy/3270font
[f-source]:https://github.com/adobe-fonts/source-code-pro
[f-liberation]:https://pagure.io/liberation-fonts
[f-terminus]:http://terminus-font.sourceforge.net
[f-fira-mono]:https://github.com/mozilla/Fira
[f-fira-code]:https://github.com/tonsky/FiraCode
[f-monoid]:https://github.com/larsenwork/monoid
[f-iosevka]:https://github.com/be5invis/Iosevka
[f-jetbrains-mono]:https://github.com/JetBrains/JetBrainsMono
[f-fant]:https://github.com/belluzj/fantasque-sans
[f-share]:https://fonts.google.com/specimen/Share+Tech+Mono
[f-space]:https://fonts.google.com/specimen/Space+Mono
[f-gohu]:http://font.gohu.org/
[f-mononoki]:https://madmalik.github.io/mononoki/
[f-hasklig]:https://github.com/i-tu/Hasklig

<!--
Patched Font internal links
-->

[p-3270]:patched-fonts/3270
[p-anonymous-pro]:patched-fonts/AnonymousPro
[p-aurulent]:patched-fonts/AurulentSansMono
[p-bitstream]:patched-fonts/BitstreamVeraSansMono
[p-dejavu]:patched-fonts/DejaVuSansMono
[p-droid]:patched-fonts/DroidSansMono
[p-fantasque]:patched-fonts/FantasqueSansMono
[p-fira-code]:patched-fonts/FiraCode
[p-fira-mono]:patched-fonts/FiraMono
[p-heavy-data]:patched-fonts/HeavyData
[p-hermit]:patched-fonts/Hermit
[p-inconsolata]:patched-fonts/Inconsolata
[p-inconsolata-go]:patched-fonts/InconsolataGo
[p-iosevka]:patched-fonts/Iosevka
[p-jetbrains-mono]:patched-fonts/JetBrainsMono
[p-hack]:patched-fonts/Hack
[p-lekton]:patched-fonts/Lekton
[p-liberation]:patched-fonts/LiberationMono
[p-meslo]:patched-fonts/Meslo
[p-monofur]:patched-fonts/Monofur
[p-monoid]:patched-fonts/Monoid
[p-mplus]:patched-fonts/MPlus
[p-profont]:patched-fonts/ProFont
[p-proggy-clean]:patched-fonts/ProggyClean
[p-roboto]:patched-fonts/RobotoMono
[p-source-code-pro]:patched-fonts/SourceCodePro
[p-terminus]:patched-fonts/Terminus
[p-ubuntu]:patched-fonts/Ubuntu
[p-ubuntu-mono]:patched-fonts/UbuntuMono
[p-share-tech-mono]:patched-fonts/ShareTechMono
[p-space-mono]:patched-fonts/SpaceMono
[p-gohu]:patched-fonts/Gohu
[p-mononoki]:patched-fonts/Mononoki
[p-code-nr]:patched-fonts/CodeNewRoman
[p-hasklig]:patched-fonts/Hasklig


<!--
Quick Link Images
-->

[ql-1]:images/nerd-fonts-character-logo-md.png "Latest Release (external link) ➶"
[ql-2]:images/nerd-fonts-character-logo-md.png "↓ View Patched Fonts List ↓"
[ql-3]:images/nerd-fonts-patcher-logo-md.png "↓ Font Patcher Details ↓"
[ql-4]:https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v1.0.0/branding-logo-sm.png "VimDevIcons Vim Plugin (external link) ➶"
[ql-5]:images/nerd-fonts-character-logo-md.png "Font Package Archive (Zip) Downloads (external link) ➶"

<!--
Patched Font Statuses
-->

[w-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-pass-sm.png "↓ Windows Compatibility Status ↓"
[l-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-pass-sm.png "↓ Linux Compatibility Status ↓"
[m-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-pass-sm.png "↓ macOS (OSX) Compatibility Status ↓"

[w]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-pass-sm.png "Windows status is working ☺"
[l]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-pass-sm.png "Linux status is working ☺"
[m]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-pass-sm.png "macOS (OSX) status is working ☺"

[w2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-unknown-sm.png "Windows status is Unknown/Un-tested"
[l2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-unknown-sm.png "Linux status is Unknown/Un-tested"
[m2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-unknown-sm.png "macOS (OSX) status is Unknown/Un-tested"

[s-iosevka]:https://github.com/ryanoasis/nerd-fonts/issues/83
