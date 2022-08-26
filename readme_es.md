<h1 align="center">
  <img src="images/nerd-fonts-logo.svg" alt="Nerd Fonts Logo" />
</h1>
<h2 align="center">
  <img alt="Agregador, colección y parchador para fuentes de iconos" src="images/project-subtitle-phrase.svg">
</h2>

<div align="center">

[Releases][release]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Fuentes](#patched-fonts)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Parchador de Fuentes](#font-patcher)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Documentación en Wiki][wiki]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Stickers][stickers]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[VimDevIcons][vim-devicons]


[![Releases en GitHub][img-version-badge]][repo] [![Gitter][img-gitter-badge]][gitter] [![Estado de la Compilación][img-travis-ci]][travis-ci] [![Código de Conducta][coc-badge]][coc] [![PRs son Bienvenidos][prs-badge]][prs]  <a href="#patched-fonts" title=""><img src="https://raw.githubusercontent.com/wiki/ryanoasis/nerd-fonts/images/faux-shield-badge-os-logos.svg?sanitize=true" alt="Nerd Fonts - Soporte de SO"></a> [![Twitter][twitter-badge]][twitter-intent]


</div>


**Nerd Fonts** es un proyecto que parcha las fuentes que un desarrollador va a usar con un número alto de glifos (iconos). Especificamente añade un gran número de glifos extra de algunas 'fuentes de iconos' como [Font Awesome ➶][font-awesome], [Devicons ➶][vorillaz-devicons], [Octicons ➶][octicons], y [otras](#glyph-sets).

El siguiente diagrama Sankey muestra los conjuntos de glifos incluidos en la actualidad:

<p align="center">
  <img src="images/sankey-glyphs-combined-diagram.svg" alt="Diagrama @SankeyMATIC" />
</p>
<sub><i>Diagrama creado usando <a href="http://sankeymatic.com/" title="SankeyMATIC (BETA): Un contructor de diagramas Sankey para todos">@SankeyMATIC</a></i></sub>


## Noticias Importantes
* Las rutas de archivo en la rama `master` **no** son consideradas estables. [Verifica las referencias URI de tu repositorio](#unstable-file-paths)
* Clonar este repositorio **no** es recomendado ([debido al tamaño del Repo](#option-5-clone-the-repo)) al menos que tu vayas a [contribuir al desarrollo](#contributing)


## Tabla de Contenidos

[**TL;DR**](#tldr)

[**Opciones de Instalación**](#font-installation)
  * [**1 - Manual**](#option-1-download-and-install-manually)
  * [**2 - Descarga de Archivo de Release**](#option-2-release-archive-download)
  * [**3 - Script de Instalación**](#option-3-install-script)
  * [**4 - Fuentes Homebrew (macOS (OS X))**](#option-4-homebrew-fonts)
  * [**5 - Clonar el Repo**](#option-5-clone-the-repo)
  * [**6 - Descarga Ad Hoc con Curl**](#option-6-ad-hoc-curl-download)
  * [**7 - Repositorio de Usuario de Arch (AUR) (Arch Linux)**](#option-7-unofficial-arch-user-repository-aur)
  * [**8 - Parcha tu Propia Fuente**](#option-8-patch-your-own-font)

[**Características**](#features)
  * [**Conjuntos de Glifos/Iconos**](#glyph-sets)
  * [**Fuentes Parchadas**](#patched-fonts)
  * [**Combinaciones**](#combinations)
  * [**Parchador de Fuentes**](#font-patcher)

[**Desarrollador / Contribuyente**](#font-patcher)
  * [**Parchador de Fuentes**](#font-patcher)
  * [**Parchador de Fuentes ¡Párchalos Todos!**](#gotta-patch-em-all)
  * [**Otras Buenas Fuentes que Parchar**](#other-good-fonts-to-patch)
  * [**Contribuir**](#contributing)

[**Motivación del Proyecto**](#project-motivation)

**Información adicional**
  * [**Rutas de Archivo Inestables en master**](#unstable-file-paths)
  * [**Registro de Cambios**](#changelog)
  * [**Licencia**](#license)


## TL;DR
  Nerd Fonts toma algunas fuentes populares de desarrollo y les añade una cantidad de glifos.
  También hay un [parchador de fuentes](#font-patcher) disponible si tu fuente preferida no ha sido parchada previamente.
  Para información de más alto nivel revisa la [wiki (en inglés)][wiki]. Si estás buscando el plugin de Vim ve a [VimDevIcons ➶][vim-devicons].

### Varias Opciones de Descarga para Fuentes

_Si tu..._

  * `Opción 1.` quieres descargar **rápidamente** una **fuente individual**, descárgala desde [el directorio `patched-fonts/`](#patched-fonts)
  * `Opción 2.` quieres descargar un paquete de variaciones de una **familia de fuentes** (negrita, itálica, etc.), ve a [descargar un paquete](#option-2-release-archive-download)
  * `Opción 3.` quieres **automatizar** la instalación o usar esto en un **script**, ve a [Script de Instalación](#option-3-install-script)
  * `Opción 4.` estas en **macOS** y quieres usar el **Homebrew**, ve a [Fuentes Homebrew](#option-4-homebrew-fonts)
  * `Opción 5.` quieres **control completo**, entonces ve a [clonar el repo](#option-5-clone-the-repo)
  * `Opción 6.` quieres usar el **comando `curl`** o usar en **scripts**, ve a [Descarga Ad Hoc con Curl](#option-6-ad-hoc-curl-download)
  * `Opción 7.` estas en **Arch Linux** y quieres usar **paquetes AUR**, ve a [Repositorios de Usuarios AUR No Oficiales](#option-7-unofficial-arch-user-repository-aur)
  * `Opción 8.` quieres parchar tu propia fuente, ve a [Parchador de Fuentes](#option-8-patch-your-own-font)

## Características
* Un [script de FontForge en Python](#font-patcher) para parchar cualquier fuente
  * Incluye una opción para crear glifos **monoespaciados (de ancho fijo)** _o_ glifos de **ancho doble (no monoespaciados)**
  * Para más detalles mira la sección del [**Parchador de Fuentes**](#font-patcher)
* **`50`** [familias de fuentes parchadas](#patched-fonts) hasta ahora
* Más de **`1,571,470`** combinaciones/variaciones únicas de fuentes parchadas [(más detalles)](#combinations)
* Más de **`2,600`** glifos/iconos en total [(más detalles)](#combinations)
  * Conjuntos de glifos actuales incluyen: [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome], [Material Design Icons][font-material-design-icons], [Weather][font-weather], [Devicons][vorillaz-devicons], [Octicons][octicons], [Font Logos][font-linux] (Formerly [Font Linux][font-linux]), [Pomicons][gabrielelana-pomicons]
* Versiones de glifos **monoespaciados (de ancho fijo)** _o_ de **ancho doble (no monoespaciados)** para cada fuente
  * Esto se refiere a los glifos de Nerd Fonts, no necesariamente a la fuente en general
* Un [script de bash](#gotta-patch-em-all) provisto por desarrolladores/contribuyentes para reparchar todas las fuentes


## Conjuntos de Glifos

:mag: :mag: Puedes buscar glifos fácilmente entrando a [NerdFonts.com][Cheat Sheet] a través de la [Hoja de Trampa][Cheat Sheet]

Ve a la [Wiki: Conjuntos de Glifos y Puntos de Código para más detalles][wiki-glyph-sets-codepoints]

### Nombres de Iconos en la Shell

Ve a la [Wiki: Nombres de iconos en la shell][wiki-icon-names-in-shell]


## Fuentes Parchadas

| Nombre de la fuente                               | Nombre de Fuente y Repositorio    |\*NRF | Tamaño EM | Estado            |
|:--------------------------------------------------|:----------------------------------|:-----|:----------|:------------------|
| [3270 Nerd Font][p-3270]                          | [3270][f-3270]                    | NO   | 1000      | ![w] ![m2] ![l]   |
| [Agave][p-agave]                                  | [Agave][f-agave]                  | NO   | 2048      | ![w] ![m2] ![l]   |
| [Anonymice Nerd Font][p-anonymous-pro]            | [Anonymous Pro][f-a-pro]          | NO   | 2048      | ![w] ![m2] ![l]   |
| [Arimo][p-arimo]                                  | [Arimo][f-arimo]                  | NO   | 2048      | ![w] ![m2] ![l]   |
| [Aurulent Sans Mono Nerd Font][p-aurulent]        |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [BigBlueTerminal][p-bigblueterm]                  |                                   | NO   | 1200      | ![w] ![m2] ![l]   |
| [Bitstream Vera Sans Mono Nerd Font][p-bitstream] |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Blex*][p-blex]                                   | [IBM Plex Mono][f-ibm-plex]       | SI   | 1000      | ![w] ![m2] ![l]   |
| [Code New Roman Nerd Font][p-code-nr]             |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Cousine Nerd Font][p-cousine]                    | [Cousine][f-cousine]              | NO   | 1000      | ![w] ![m2] ![l]   |
| [DaddyTimeMono][p-daddytimemono]                  | [DaddyTimeMono][f-daddytimemono]  | NO   | 1024      | ![w] ![m2] ![l]   |
| [DejaVu Sans Mono Nerd Font][p-dejavu]            |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Droid Sans Mono Nerd Font][p-droid]              |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Fantasque Sans Nerd Font][p-fantasque]           | [Fantasque Sans][f-fant]          | NO   | 2048      | ![w] ![m2] ![l]   |
| [Fira Code Nerd Font][p-fira-code]                | [Fira Code][f-fira-code]          | NO   | 1000      | ![w] ![m2] ![l]   |
| [Fira Mono Nerd Font][p-fira-mono]                | [Fira][f-fira-mono]               | NO   | 1000      | ![w] ![m2] ![l]   |
| [Go Mono Nerd Font][p-go-mono]                    | [Go-Mono][f-go-mono]              | NO   | 1000      | ![w] ![m2] ![l]   |
| [Gohu Nerd Font][p-gohu]                          | [Gohu TTF][f-gohu2],[Gohu][f-gohu]| NO   | 1000      | ![w] ![m2] ![l]   |
| [Hack Nerd Font][p-hack]                          | [Hack][f-hack]                    | NO   | 2048      | ![w] ![m2] ![l]   |
| [Hasklug Nerd Font*][p-hasklig]                   | [Hasklig][f-hasklig]              | SI   | 1000      | ![w] ![m2] ![l]   |
| [Heavy Data Mono Nerd Font][p-heavy-data]         |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Hermut Nerd Font][p-hermit]                      |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [iM-Writing*][p-im-writing]                       | [iA-Writer][f-ia-writer]          | SI   | 1000      | ![w] ![m2] ![l]   |
| [Inconsolata Nerd Font][p-inconsolata]            |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Inconsolata Go Nerd Font][p-inconsolata-go]      |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Inconsolata LGC Nerd Font][p-inconsolata-lgc]    |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Iosevka Nerd Font][p-iosevka]                    | [Iosevka][f-iosevka]              | NO   | 1000      | [#83][s-iosevka]  |
| [JetBrains Mono][p-jetbrains-mono]                | [JetBrains Mono][f-jetbrains-mono]| NO   | 1000      | ![w] ![m2] ![l]   |
| [Lekton Nerd Font][p-lekton]                      |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Literation Mono Nerd Font*][p-liberation]        | [Liberation][f-liberation]        | SI   | 2048      | ![w] ![m2] ![l]   |
| [Meslo Nerd Font][p-meslo]                        |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Monofur Nerd Font][p-monofur]                    |                                   | NO   | 2400      | ![w] ![m2] ![l]   |
| [Monoid Nerd Font][p-monoid]                      |                                   | NO   | 1536      | ![w] ![m2] ![l]   |
| [Mononoki Nerd Font][p-mononoki]                  | [Mononoki][f-mononoki]            | NO   | 1024      | ![w] ![m2] ![l]   |
| [M+ (MPlus) Nerd Font][p-mplus]                   |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Noto][p-noto]                                    |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [OpenDyslexic][p-opendyslexic]                    |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Overpass][p-overpass]                            |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [ProFont (Windows tweaked) Nerd Font][p-profont]  |                                   | NO   | 1200      | ![w] ![m2] ![l]   |
| [ProFont (x11) Nerd Font][p-profont]              |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [ProggyClean Nerd Font][p-proggy-clean]           |                                   | NO   | 2048      | Imperfecto        |
| [Roboto Mono][p-roboto]                           |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Sauce Code Nerd Font][p-source-code-pro]         | [Source][f-source]                | SI   | 1000      | ![w] ![m2] ![l]   |
| [Shure Tech Mono Nerd Font*][p-share-tech-mono]   | [Share Tech Mono][f-share]        | SI   | 1000      | ![w] ![m2] ![l]   |
| [Space Mono Nerd Font][p-space-mono]              | [Space Mono][f-space]             | NO   | 1000      | ![w] ![m2] ![l]   |
| [Terminess Nerd Font*][p-terminus]                | [Terminus Font][f-terminus]       | SI   | 1000      | ![w] ![m2] ![l]   |
| [Tinos][p-tinos]                                  |                                   | NO   | 2048      | ![w] ![m2] ![l]   |
| [Ubuntu Nerd Font][p-ubuntu]                      |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Ubuntu Mono Nerd Font][p-ubuntu-mono]            |                                   | NO   | 1000      | ![w] ![m2] ![l]   |
| [Victor Mono][p-victor]                           | [Victor Mono][f-victor]           | NO   | 1000      | ![w] ![m2] ![l]   |

<sub>_*NRF = Nombre Reservado de Fuente_</sub>

## Combinaciones

- Más de **`1,485,000`** variaciones/combinaciones únicas (Power Set) de fuentes parchadas:
  - **`50`** tipografías de fuentes parchadas
  - **`719`** familias de fuente parchadas
  - **`2,876`** variaciones/combinaciones 'completas'
  - **`'1,485,410'`** variaciones/combinaciones _posibles_
  - **`1,488,286`** combinaciones totales calculadas (2,876 + 1,428,110)
- Combinaciones para cada fuente son cualquier combinación de [Variaciones](#variations)

### Variaciones

- si no se pasan parámetros (por defecto solo para **Seti-UI + Personalizado** y **[Devicons][vorillaz-devicons]**)
- glifos de ancho **doble _(variable/proporcional)_** o **simple _(fijo/monoespaciado)_**
- [Font Awesome][font-awesome]
- [Font Awesome Extension][font-awesome-extension]
- [Material Design Icons][font-material-design-icons]
- [Weather][font-weather]
- [GitHub Octicons][octicons]
- [Font Logos][font-linux] (Formerly [Font Linux][font-linux])
- [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
- [IEC Power Symbols][website-iecpower]
- [Pomicons][gabrielelana-pomicons]
- Compatibilidad con Windows


## Instalación de Fuentes

### `Opción 1: Descarga e Instala Manualmente`

> Es la mejor opción para **rápidamente** obtener una **fuente individual**.

Descarga la [fuente parchada](#patched-fonts) específica que desees

### `Opción 2: Descargar Paquete de Release`

> Es la mejor opción si quieres un **paquete** o una **familia de fuentes** con variaciones (negrita, itálica, etc.).

Las fuentes están disponibles para descarga como paquetes en los [releases recientes](https://github.com/ryanoasis/nerd-fonts/releases/latest)

### `Opción 3: Script de Instalación`

> Es la mejor opción si quieres **automátizar** la instalación o usarlo en **scripts**.

_Nota_: Es solo para Linux y macOS (OS X)
_Nota_: **Requiere clonar** el repo en la actualidad

#### Todas las fuentes:

* Instala todas las Fuentes parchadas (_Advertencia: Son una gran cantidad de Fuentes que suman un tamaño grande_)

```sh
./install.sh
```

#### Fuentes individuales:

* Instala una fuente individual de tu preferencia

```sh
./install.sh <NombreFuente>
./install.sh Hack
./install.sh HeavyData
```

### `Opción 4: Fuentes Homebrew`

> Es la mejor opcion si estás en **macOS** y quieres usar **Homebrew**.

Todas las fuentes están disponibles en [Homebrew Cask Fonts](https://github.com/Homebrew/homebrew-cask-fonts) en macOS (OS X)

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### `Opción 5: Clonar el repo`

> Es la mejor opción si quieres **control completo**, **todas** o **la mayoría** de las fuentes, o **contribuir** al desarrollo.

Clonar este repositorio **no** es requerido ni eficiente (más que todo debido al tamaño del Repositorio) si tu simplemente estás interesado en un conjunto limitado de fuentes.

Sin embargo, si quieres clonar el repo, asegúrate de hacer un clón _superficial_:
```sh
git clone --depth 1
```

### `Opción 6: Descarga Ad Hoc con Curl`

> Esta es la opción si deseas usar el **comando `curl`** o para usarlo con **scripts**.

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

Nota:_ Rutas alternativas deprecadas: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

### `Opción 7: Repositorio de Usuarios de Arch (AUR) No Oficial`

> Es la opción para usuarios de **Arch Linux** que quieren usar **paquetes AUR**.

las siguientes fuentes están disponibles como [paquetes AUR](https://aur.archlinux.org/) en Arch Linux:

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

### `Opción 8: Parchar tu Propia Fuente`

> La opción para **parchar** tu **propia fuente** o **personalizar** completamente la fuente parchada.

Usa el script de línea de comandos de Python provisto para generar una fuente parchada desde tu propia fuente y obtener los glifos extra nuevos.

Ve a: [Parchador de fuentes](#font-patcher) para ver como usarlo.

* usa esta opción si __no__ quieres usar alguna de las [fuentes provistas](#patched-fonts)
* aún necesitarás copiar la fuente generada al directorio correcto de fuentes de tu sistema


<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Parchador de Nerd Fonts">
</h2>

Parcha la fuente de tu preferencia para usar los [VimDevIcons ➶][vim-devicons]:
* requiere: Python 2 (o Python 3), el paquete `python-fontforge` (version `20141231` o superior, mira
  las [instrucciones de instalación](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* método alternativo de instalación en OSX: `brew install fontforge`
* Uso:

```
./font-patcher RUTA_A_LA_FUENTE
```

* Uso alternativo: Ejecutar el parchador con el binario de FontForge usando el parámetro `-script`:

```
./fontforge -script font-patcher RUTA_A_LA_FUENTE
```


```
uso: font-patcher [-h] [-v] [-s] [-l] [-q] [-w] [-c] [--fontawesome]
                    [--fontawesomeextension] [--fontlinux] [--octicons]
                    [--powersymbols] [--pomicons] [--powerline]
                    [--powerlineextra] [--material] [--weather]
                    [--custom [CUSTOM]] [--postprocess [POSTPROCESS]]
                    [--removeligs] [--configfile [CONFIGFILE]]
                    [--progressbars | --no-progressbars] [--careful]
                    [-ext [EXTENSION]] [-out [OUTPUTDIR]]
                    font

Parchador de fuentes Nerd Fonts: parcha una fuente dada con glifos relacionados con la programación y el desarrollo

* Sitio web: https://www.nerdfonts.com
* Versión: 2.0.0
* Sitio de Desarrollo: https://github.com/ryanoasis/nerd-fonts
* Registro de Cambios: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md

argumentos posicionales:
  font                  Ruta a la fuente a parchar (e.g., Inconsolata.otf)

argumentos opcionales:
  -h, --help            muestra este mensaje de ayuda y sale
  -v, --version         muestra la versión del programa y sale
  -s, --mono, --use-single-width-glyphs
                        Indica si genera los glifos como ancho simple, no doble (por defecto es ancho doble)
  -l, --adjust-line-height
                        Indica si se ajustan las alturas de línea (para intentar centrar los separadores de powerline más parejo)
  -q, --quiet, --shutup
                        No generar salida verbal
  -w, --windows         Limitar el nombre interno de la fuente a 31 caracteres (para compatibilidad con Windows)
  -c, --complete        Añade todos los glifos disponibles
  --fontawesome         Añade los glifos de Font Awesome (http://fontawesome.io/)
  --fontawesomeextension
                        Añade los glifos de Font Awesome Extension (https://andrelzgava.github.io/font-awesome-extension/)
  --fontlinux, --fontlogos
                        Añade los glifos de Font Linux y otros glifos de Código Libre (https://github.com/Lukas-W/font-logos)
  --octicons            Añade los glifos de Octicons (https://octicons.github.com)
  --powersymbols        Añade los glifos de IEC Power Symbols (https://unicodepowersymbol.com/)
  --pomicons            Añade los glifos de Pomicon (https://github.com/gabrielelana/pomicons)
  --powerline           Añade los glifos de Powerline
  --powerlineextra      Añade los glifos de Powerline (https://github.com/ryanoasis/powerline-extra-symbols)
  --material, --materialdesignicons, --mdi
                        Añade los glifos de Material Design Icons (https://github.com/templarian/MaterialDesign)
  --weather, --weathericons
                        Añade los glifos de Weather Icons (https://github.com/erikflowers/weather-icons)
  --custom [CUSTOM]     Especifica una fuente de símbolos personalizados. Todos los glifos nuevos serán copiados, sin aplicar escala.
  --postprocess [POSTPROCESS]
                        Especifica un Script para Post Procesamiento
  --removeligs, --removeligatures
                        Remueve ligaturas especificadas en el archivo de configuración JSON
  --configfile [CONFIGFILE]
                        Especifica una ruta de archivo para un archivo de configuración JSON (mira el ejemplo en: src/config.sample.json)
  --progressbars        Muestra barras de progreso con porcentajes de completitud por cada Conjunto de Glifos
  --no-progressbars     No muestra barras de progreso con porcentajes de completitud por cada Conjunto de Glifos
  --careful             No sobreescribe los glifos que ya existen si son detectados
  -ext [EXTENSION], --extension [EXTENSION]
                        Cambia el tipo de archivo de fuente a crear (ej., ttf, otf)
  -out [OUTPUTDIR], --outputdir [OUTPUTDIR]
                        El directorio donde se generará el archivo de fuente parchado
```

#### Ejemplos

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
## Parchador de Fuentes ¡Párchalos Todos!

* para uso por los Contribuyentes o Desarrolladores

* reparcha **todas** las fuentes sin parchar en el directorio:
```
./gotta-patch-em-all-font-patcher\!.sh
```

* puede opcionalmente limitarse a un patrón específico de nombre de fuente:
```
./gotta-patch-em-all-font-patcher\!.sh Hermit
```


## Contribuir

Ver [contributing.md](contributing.md)


## Rutas de Archivo Inestables

:warning: Advertencia: Las rutas de nombres de archivo podrían cambiar por cada release (especialmente en cambios de número de versión **mayor**)

Referencia a la rama **release** y _no_ a la rama ~~master~~ porque las rutas de archivos podrían cambiar en cada release

* Por ejempo:
  * :white_check_mark: Usa: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<b>0.9.0</b>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>
  * :x: En vez de: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<del>master</del>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>


## Otras Buenas Fuentes a Parchar

* una lista de fuentes adicionales que podrían ser parchadas, pero no se pueden proveer o compartir debido a sus licencias:
 * [Input Mono][input-mono] (restricción de licencia)
   * Posiblemente venga con un hosting externo :)
 * [PragmataPro][pragmatapro] (no es libre)
 * [Consolas][consolas] (propietaria)
 * [Operator Mono][operator] (no es libre)
 * [Dank Mono][dank] (no es libre)


## Motivación del Proyecto

Ve a la [Wiki: Propósito del Proyecto][wiki-project-purpose]


## Registro de Cambios

Mira [changelog.md](changelog.md)

## Licencias

[MIT](LICENSE) © Ryan L McIntyre

<!--
Repo References
-->

[vim-devicons]:https://github.com/ryanoasis/vim-devicons "VimDevIcons Vim Plugin (external link) ➶"
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[font-awesome-extension]:https://github.com/AndreLZGava/font-awesome-extension
[font-material-design-icons]:https://github.com/Templarian/MaterialDesign
[font-weather]:https://github.com/erikflowers/weather-icons
[octicons]:https://github.com/primer/octicons
[font-linux]:https://github.com/Lukas-W/font-logos
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[wiki]:https://github.com/ryanoasis/nerd-fonts/wiki
[wiki-project-purpose]:https://github.com/ryanoasis/nerd-fonts/wiki/Project-Purpose
[wiki-glyph-sets-codepoints]:https://github.com/ryanoasis/nerd-fonts/wiki/Glyph-Sets-and-Code-Points
[wiki-icon-names-in-shell]:https://github.com/ryanoasis/nerd-fonts/wiki/Icon-Names-in-Shell
[repo]:https://github.com/ryanoasis/nerd-fonts
[gitter]:https://gitter.im/ryanoasis/nerd-fonts
[code-climate]:https://codeclimate.com/github/ryanoasis/nerd-fonts
[travis-ci]:https://travis-ci.org/ryanoasis/nerd-fonts
[twitter-intent]:https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Fryanoasis%2Fnerd-fonts&via=%40nerdfonts&text=Nerd%20Fonts%20-%20Iconic%20font%20aggregator%2C%20collection%2C%20and%20patcher&hashtags=iconfont%20font%20github


<!--
Website References
-->

[website-iecpower]:https://unicodepowersymbol.com/
[Cheat Sheet]:https://nerdfonts.com/cheat-sheet
[stickers]:https://www.redbubble.com/people/ryanoasis/works/30764810-nerd-fonts-iconic-font-aggregator

<!--
Link References
-->

[badge-version]:https://badge.fury.io/gh/ryanoasis%2Fnerd-fonts
[badge-gitter]:https://gitter.im/ryanoasis/nerd-fonts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

[img-version-badge]:https://img.shields.io/github/release/ryanoasis/nerd-fonts.svg?style=for-the-badge
[img-gitter-badge]:https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=for-the-badge
[img-code-climate-badge]:https://img.shields.io/codeclimate/issues/ryanoasis/nerd-fonts.svg?style=for-the-badge
[img-travis-ci]:https://img.shields.io/travis/ryanoasis/nerd-fonts.svg?branch=master&style=for-the-badge
[coc-badge]: https://img.shields.io/badge/code%20of-conduct-ff69b4.svg?style=for-the-badge
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIGlkPSJzdmcyIiB3aWR0aD0iNjQ1IiBoZWlnaHQ9IjU4NSIgdmVyc2lvbj0iMS4wIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPiA8ZyBpZD0ibGF5ZXIxIj4gIDxwYXRoIGlkPSJwYXRoMjQxNyIgZD0ibTI5Ny4zIDU1MC44N2MtMTMuNzc1LTE1LjQzNi00OC4xNzEtNDUuNTMtNzYuNDM1LTY2Ljg3NC04My43NDQtNjMuMjQyLTk1LjE0Mi03Mi4zOTQtMTI5LjE0LTEwMy43LTYyLjY4NS01Ny43Mi04OS4zMDYtMTE1LjcxLTg5LjIxNC0xOTQuMzQgMC4wNDQ1MTItMzguMzg0IDIuNjYwOC01My4xNzIgMTMuNDEtNzUuNzk3IDE4LjIzNy0zOC4zODYgNDUuMS02Ni45MDkgNzkuNDQ1LTg0LjM1NSAyNC4zMjUtMTIuMzU2IDM2LjMyMy0xNy44NDUgNzYuOTQ0LTE4LjA3IDQyLjQ5My0wLjIzNDgzIDUxLjQzOSA0LjcxOTcgNzYuNDM1IDE4LjQ1MiAzMC40MjUgMTYuNzE0IDYxLjc0IDUyLjQzNiA2OC4yMTMgNzcuODExbDMuOTk4MSAxNS42NzIgOS44NTk2LTIxLjU4NWM1NS43MTYtMTIxLjk3IDIzMy42LTEyMC4xNSAyOTUuNSAzLjAzMTYgMTkuNjM4IDM5LjA3NiAyMS43OTQgMTIyLjUxIDQuMzgwMSAxNjkuNTEtMjIuNzE1IDYxLjMwOS02NS4zOCAxMDguMDUtMTY0LjAxIDE3OS42OC02NC42ODEgNDYuOTc0LTEzNy44OCAxMTguMDUtMTQyLjk4IDEyOC4wMy01LjkxNTUgMTEuNTg4LTAuMjgyMTYgMS44MTU5LTI2LjQwOC0yNy40NjF6IiBmaWxsPSIjZGQ1MDRmIi8%2BIDwvZz48L3N2Zz4%3D
[twitter-badge]:https://img.shields.io/twitter/url/http/shields.io.svg?style=for-the-badge&logo=twitter
[os-badge]:https://img.shields.io/badge/-OS-brightgreen.svg?style=for-the-badge&logoWidth=80&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSIzOS43NDFtbSIgaGVpZ2h0PSIxMy4zNzdtbSIgdmVyc2lvbj0iMS4xIiB2aWV3Qm94PSIwIDAgMzkuNzQxMjggMTMuMzc3MTI3IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48bWV0YWRhdGE%2BPHJkZjpSREY%2BPGNjOldvcmsgcmRmOmFib3V0PSIiPjxkYzpmb3JtYXQ%2BaW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PjxkYzp0eXBlIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiLz48ZGM6dGl0bGUvPjwvY2M6V29yaz48L3JkZjpSREY%2BPC9tZXRhZGF0YT48ZyB0cmFuc2Zvcm09Im1hdHJpeCguMzMwODMgMCAwIC4zMzA4MyAyNi41MDggLTEuNzc0MikiPjxwb2x5Z29uIHBvaW50cz0iMTcuNCAzOC4zIDIxLjUgNDAuNiAyNy43IDQwLjYgMzMuNSAzNi4yIDM2LjEgMjkuMyAzMC4xIDIyIDI4LjQgMTcuOSAyMC4xIDE4LjIgMjAuMiAyMC41IDE4LjYgMjMuNSAxNi4xIDI4LjQgMTUuNiAzMi41IiBmaWxsPSIjZWNlZmYxIi8%2BPHBhdGggZD0ibTM0LjMgMjMuOWMtMS42LTIuMy0yLjktMy43LTMuNi02LjZzMC4yLTIuMS0wLjQtNC42Yy0wLjMtMS4zLTAuOC0yLjItMS4zLTIuOS0wLjYtMC43LTEuMy0xLjEtMS43LTEuMi0wLjktMC41LTMtMS4zLTUuNiAwLjEtMi43IDEuNC0yLjQgNC40LTEuOSAxMC41IDAgMC40LTAuMSAwLjktMC4zIDEuMy0wLjQgMC45LTEuMSAxLjctMS43IDIuNC0wLjcgMS0xLjQgMi0xLjkgMy4xLTEuMiAyLjMtMi4zIDUuMi0yIDYuMyAwLjUtMC4xIDYuOCA5LjUgNi44IDkuNyAwLjQtMC4xIDIuMS0wLjEgMy42LTAuMSAyLjEtMC4xIDMuMy0wLjIgNSAwLjIgMC0wLjMtMC4xLTAuNi0wLjEtMC45IDAtMC42IDAuMS0xLjEgMC4yLTEuOCAwLjEtMC41IDAuMi0xIDAuMy0xLjYtMSAwLjktMi44IDEuOS00LjUgMi4yLTEuNSAwLjMtNC0wLjItNS4yLTEuNyAwLjEgMCAwLjMgMCAwLjQtMC4xIDAuMy0wLjEgMC42LTAuMiAwLjctMC40IDAuMy0wLjUgMC4xLTEtMC4xLTEuM3MtMS43LTEuNC0yLjQtMi0xLjEtMC45LTEuNS0xLjNsLTAuOC0wLjhjLTAuMi0wLjItMC4zLTAuNC0wLjQtMC41LTAuMi0wLjUtMC4zLTEuMS0wLjItMS45IDAuMS0xLjEgMC41LTIgMS0zIDAuMi0wLjQgMC43LTEuMiAwLjctMS4ycy0xLjcgNC4yLTAuOCA1LjVjMCAwIDAuMS0xLjMgMC41LTIuNiAwLjMtMC45IDAuOC0yLjIgMS40LTIuOXMyLjEtMy4zIDIuMi00LjljMC0wLjcgMC4xLTEuNCAwLjEtMS45LTAuNC0wLjQgNi42LTEuNCA3LTAuMyAwLjEgMC40IDEuNSA0IDIuMyA1LjkgMC40IDAuOSAwLjkgMS43IDEuMiAyLjcgMC4zIDEuMSAwLjUgMi42IDAuNSA0LjEgMCAwLjMgMCAwLjgtMC4xIDEuMyAwLjIgMCA0LjEtNC4yLTAuNS03LjcgMCAwIDIuOCAxLjMgMi45IDMuOSAwLjEgMi4xLTAuOCAzLjgtMSA0LjEgMC4xIDAgMi4xIDAuOSAyLjIgMC45IDAuNCAwIDEuMi0wLjMgMS4yLTAuMyAwLjEtMC4zIDAuNC0xLjEgMC40LTEuNCAwLjctMi4zLTEtNi0yLjYtOC4zeiIgZmlsbD0iIzI2MzIzOCIvPjxnIGZpbGw9IiNlY2VmZjEiPjxlbGxpcHNlIGN4PSIyMS42IiBjeT0iMTUuMyIgcng9IjEuMyIgcnk9IjIiLz48ZWxsaXBzZSBjeD0iMjYuMSIgY3k9IjE1LjIiIHJ4PSIxLjciIHJ5PSIyLjMiLz48L2c%2BPGcgZmlsbD0iIzIxMjEyMSI%2BPGVsbGlwc2UgdHJhbnNmb3JtPSJtYXRyaXgoLS4xMjU0IC0uOTkyMSAuOTkyMSAtLjEyNTQgOC45NzU0IDM4Ljk5NykiIGN4PSIyMS43IiBjeT0iMTUuNSIgcng9IjEuMiIgcnk9Ii43Ii8%2BPGVsbGlwc2UgY3g9IjI2IiBjeT0iMTUuNiIgcng9IjEiIHJ5PSIxLjMiLz48L2c%2BPGcgZmlsbD0iI2ZmYzEwNyI%2BPHBhdGggZD0ibTM5LjMgMzcuNmMtMC40LTAuMi0xLjEtMC41LTEuNy0xLjQtMC4zLTAuNS0wLjItMS45LTAuNy0yLjUtMC4zLTAuNC0wLjctMC4yLTAuOC0wLjItMC45IDAuMi0zIDEuNi00LjQgMC0wLjItMC4yLTAuNS0wLjUtMS0wLjVzLTAuNyAwLjItMC45IDAuNi0wLjIgMC43LTAuMiAxLjdjMCAwLjggMCAxLjctMC4xIDIuNC0wLjIgMS43LTAuNSAyLjctMC41IDMuNyAwIDEuMSAwLjMgMS44IDAuNyAyLjEgMC4zIDAuMyAwLjggMC41IDEuOSAwLjVzMS44LTAuNCAyLjUtMS4xYzAuNS0wLjUgMC45LTAuNyAyLjMtMS43IDEuMS0wLjcgMi44LTEuNiAzLjEtMS45IDAuMi0wLjIgMC41LTAuMyAwLjUtMC45IDAtMC41LTAuNC0wLjctMC43LTAuOHoiLz48cGF0aCBkPSJtMTkuMiAzNy45Yy0xLTEuNi0xLjEtMS45LTEuOC0yLjktMC42LTEtMS45LTIuOS0yLjctMi45LTAuNiAwLTAuOSAwLjMtMS4zIDAuN3MtMC44IDEuMy0xLjUgMS44Yy0wLjYgMC41LTIuMyAwLjQtMi43IDFzMC40IDEuNSAwLjQgM2MwIDAuNi0wLjUgMS0wLjYgMS40LTAuMSAwLjUtMC4yIDAuOCAwIDEuMiAwLjQgMC42IDAuOSAwLjggNC4zIDEuNSAxLjggMC40IDMuNSAxLjQgNC42IDEuNXMzIDAgMy0yLjdjMC4xLTEuNi0wLjgtMi0xLjctMy42eiIvPjxwYXRoIGQ9Im0yMS4xIDE5LjhjLTAuNi0wLjQtMS4xLTAuOC0xLjEtMS40czAuNC0wLjggMS0xLjNjMC4xLTAuMSAxLjItMS4xIDIuMy0xLjFzMi40IDAuNyAyLjkgMC45YzAuOSAwLjIgMS44IDAuNCAxLjcgMS4xLTAuMSAxLTAuMiAxLjItMS4yIDEuNy0wLjcgMC4yLTIgMS4zLTIuOSAxLjMtMC40IDAtMSAwLTEuNC0wLjEtMC4zLTAuMS0wLjgtMC42LTEuMy0xLjF6Ii8%2BPC9nPjxnIGZpbGw9IiM2MzQ3MDMiPjxwYXRoIGQ9Im0yMC45IDE5YzAuMiAwLjIgMC41IDAuNCAwLjggMC41IDAuMiAwLjEgMC41IDAuMiAwLjUgMC4yaDAuOWMwLjUgMCAxLjItMC4yIDEuOS0wLjYgMC43LTAuMyAwLjgtMC41IDEuMy0wLjcgMC41LTAuMyAxLTAuNiAwLjgtMC43cy0wLjQgMC0xLjEgMC40Yy0wLjYgMC40LTEuMSAwLjYtMS43IDAuOS0wLjMgMC4xLTAuNyAwLjMtMSAwLjNoLTAuOWMtMC4zIDAtMC41LTAuMS0wLjgtMC4yLTAuMi0wLjEtMC4zLTAuMi0wLjQtMC4yLTAuMi0wLjEtMC42LTAuNS0wLjgtMC42IDAgMC0wLjIgMC0wLjEgMC4xbDAuNiAwLjZ6Ii8%2BPHBhdGggZD0ibTIzLjkgMTYuOGMwLjEgMC4yIDAuMyAwLjIgMC40IDAuM3MwLjIgMC4xIDAuMiAwLjFjMC4xLTAuMSAwLTAuMy0wLjEtMC4zIDAtMC4yLTAuNS0wLjItMC41LTAuMXoiLz48cGF0aCBkPSJtMjIuMyAxN2MwIDAuMSAwLjIgMC4yIDAuMiAwLjEgMC4xLTAuMSAwLjItMC4yIDAuMy0wLjIgMC4yLTAuMSAwLjEtMC4yLTAuMi0wLjItMC4yIDAuMS0wLjIgMC4yLTAuMyAwLjN6Ii8%2BPC9nPjxwYXRoIGQ9Im0zMiAzNC43djAuM2MwLjIgMC40IDAuNyAwLjUgMS4xIDAuNSAwLjYgMCAxLjItMC40IDEuNS0wLjggMC0wLjEgMC4xLTAuMiAwLjItMC4zIDAuMi0wLjMgMC4zLTAuNSAwLjQtMC42IDAgMC0wLjEtMC4xLTAuMS0wLjItMC4xLTAuMi0wLjQtMC40LTAuOC0wLjUtMC4zLTAuMS0wLjgtMC4yLTEtMC4yLTAuOS0wLjEtMS40IDAuMi0xLjcgMC41IDAgMCAwLjEgMCAwLjEgMC4xIDAuMiAwLjIgMC4zIDAuNCAwLjMgMC43IDAuMSAwLjIgMCAwLjMgMCAwLjV6IiBmaWxsPSIjNDU1YTY0Ii8%2BPC9nPjxnIHRyYW5zZm9ybT0ibWF0cml4KC4xMzk0NSAwIDAgLjEzOTQ1IDAgMS4xNjIzKSI%2BPHBhdGggZD0ibTAgMTIuNDAyIDM1LjY4Ny00Ljg2MDIgMC4wMTU2IDM0LjQyMy0zNS42NyAwLjIwMzEzeiIgZmlsbD0iI2Y4NjgyYyIvPjxwYXRoIGQ9Im0zOS45OTYgNi45MDU5IDQ3LjMxOC02LjkwNnY0MS41MjdsLTQ3LjMxOCAwLjM3NTY1eiIgZmlsbD0iIzkxYzMwMCIvPjxwYXRoIGQ9Im0zNS42NyA0NS45MzEgMC4wMjc3IDM0LjQ1My0zNS42Ny00LjkwNDEtMmUtMyAtMjkuNzh6IiBmaWxsPSIjMDBiNGYxIi8%2BPHBhdGggZD0ibTg3LjMyNiA0Ni4yNTUtMC4wMTExIDQxLjM0LTQ3LjMxOC02LjY3ODQtMC4wNjYzLTM0LjczOXoiIGZpbGw9IiNmZmMzMDAiLz48L2c%2BPHBhdGggZD0ibTI2LjEzNyAxMC4yODRjLTAuMTk5NTggMC40NjEwNi0wLjQzNTgxIDAuODg1NDctMC43MDk1MiAxLjI3NTctMC4zNzMwOCAwLjUzMTkzLTAuNjc4NTYgMC45MDAxMy0wLjkxMzk4IDEuMTA0Ni0wLjM2NDk0IDAuMzM1NjItMC43NTU5NSAwLjUwNzUtMS4xNzQ2IDAuNTE3MjctMC4zMDA1OSAwLTAuNjYzMDgtMC4wODU1My0xLjA4NS0wLjI1OTA0LTAuNDIzMzUtMC4xNzI2OS0wLjgxMjQtMC4yNTgyMy0xLjE2ODEtMC4yNTgyMy0wLjM3MzA4IDAtMC43NzMyMiAwLjA4NTU0LTEuMjAxMiAwLjI1ODIzLTAuNDI4NjQgMC4xNzM1MS0wLjc3Mzk1IDAuMjYzOTMtMS4wMzggMC4yNzI4OS0wLjQwMTUyIDAuMDE3MTItMC44MDE3My0wLjE1OTY2LTEuMjAxMi0wLjUzMTEyLTAuMjU0OTctMC4yMjIzOC0wLjU3Mzg4LTAuNjAzNjItMC45NTU5My0xLjE0MzctMC40MDk5LTAuNTc2NzQtMC43NDY5MS0xLjI0NTUtMS4wMTA5LTIuMDA4LTAuMjgyNzUtMC44MjM1Ni0wLjQyNDQ5LTEuNjIxMS0wLjQyNDQ5LTIuMzkzMSAwLTAuODg0NDEgMC4xOTExLTEuNjQ3MiAwLjU3Mzg4LTIuMjg2NCAwLjMwMDgzLTAuNTEzNDQgMC43MDEwNC0wLjkxODQ2IDEuMjAxOS0xLjIxNTggMC41MDA5LTAuMjk3MzMgMS4wNDIxLTAuNDQ4ODQgMS42MjUtMC40NTg1NCAwLjMxODkxIDAgMC43MzcxMyAwLjA5ODY1IDEuMjU2OCAwLjI5MjUyIDAuNTE4MjUgMC4xOTQ1MyAwLjg1MTAxIDAuMjkzMTggMC45OTY5IDAuMjkzMTggMC4xMDkwOCAwIDAuNDc4NzQtMC4xMTUzNSAxLjEwNTQtMC4zNDUzMSAwLjU5MjYyLTAuMjEzMjYgMS4wOTI4LTAuMzAxNTYgMS41MDI1LTAuMjY2NzggMS4xMTAzIDAuMDg5NiAxLjk0NDQgMC41MjcyOSAyLjQ5OTIgMS4zMTU4LTAuOTkyOTkgMC42MDE2Ni0xLjQ4NDIgMS40NDQ0LTEuNDc0NCAyLjUyNTQgOWUtMyAwLjg0MjA1IDAuMzE0NDMgMS41NDI4IDAuOTE0NzkgMi4wOTkxIDAuMjcyMDggMC4yNTgyMiAwLjU3NTkyIDAuNDU3OCAwLjkxMzk4IDAuNTk5NTQtMC4wNzMzMiAwLjIxMjYxLTAuMTUwNyAwLjQxNjI2LTAuMjMyOTggMC42MTE3NnptLTIuNTQ2NC0xMC4wMmMwIDAuNjYtMC4yNDExMiAxLjI3NjItMC43MjE3MyAxLjg0NjYtMC41OCAwLjY3ODA3LTEuMjgxNSAxLjA2OTktMi4wNDIzIDEuMDA4MS0wLjAwOTctMC4wNzkxOC0wLjAxNTMtMC4xNjI1MS0wLjAxNTMtMC4yNTAwOCAwLTAuNjMzNiAwLjI3NTgyLTEuMzExNyAwLjc2NTY0LTEuODY2MSAwLjI0NDU0LTAuMjgwNzEgMC41NTU1NS0wLjUxNDEyIDAuOTMyNzEtMC43MDAzMSAwLjM3NjM1LTAuMTgzNDEgMC43MzIzMy0wLjI4NDg1IDEuMDY3MS0wLjMwMjIxIDAuMDA5OCAwLjA4ODIzIDAuMDEzODUgMC4xNzY0NyAwLjAxMzg1IDAuMjY0eiIgc3Ryb2tlLXdpZHRoPSIuMDgxNDYiLz48L3N2Zz4%3D


[consolas]:https://www.microsoft.com/typography/fonts/family.aspx?FID=300
[input-mono]:http://input.djr.com/download/
[pragmatapro]:https://www.fsd.it/shop/fonts/pragmatapro/
[operator]:https://www.typography.com/fonts/operator/
[dank]:https://dank.sh/

[release]:https://github.com/ryanoasis/nerd-fonts/releases/latest "Latest Release (external link) ➶"
[coc]:https://github.com/ryanoasis/nerd-fonts/blob/master/code_of_conduct.md "Contributor Covenant Code of Conduct"
[prs]:http://makeapullrequest.com "Make a Pull Request (external link) ➶"

<!--
Font repos
-->

[f-arimo]:https://github.com/google/fonts/tree/master/apache/arimo
[f-hack]:https://github.com/chrissimpkins/Hack
[f-a-pro]:https://www.marksimonson.com/fonts/view/anonymous-pro
[f-3270]:https://github.com/rbanffy/3270font
[f-cousine]:https://fonts.google.com/specimen/Cousine
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
[f-go-mono]:https://go.googlesource.com/image/+/master/font/gofont/ttfs/
[f-gohu]:http://font.gohu.org/
[f-gohu2]:https://github.com/koemaeda/gohufont-ttf
[f-mononoki]:https://madmalik.github.io/mononoki/
[f-hasklig]:https://github.com/i-tu/Hasklig
[f-ibm-plex]:https://github.com/IBM/plex
[f-victor]:https://github.com/rubjo/victor-mono
[f-daddytimemono]:https://github.com/BourgeoisBear/DaddyTimeMono
[f-agave]:https://github.com/agarick/agave
[f-ia-writer]:https://github.com/iaolo/iA-Fonts

<!--
Patched Font internal links
-->

[p-3270]:patched-fonts/3270
[p-anonymous-pro]:patched-fonts/AnonymousPro
[p-aurulent]:patched-fonts/AurulentSansMono
[p-arimo]:patched-fonts/Arimo
[p-bigblueterm]:patched-fonts/BigBlueTerminal
[p-bitstream]:patched-fonts/BitstreamVeraSansMono
[p-blex]:patched-fonts/IBMPlexMono
[p-cousine]:patched-fonts/Cousine
[p-dejavu]:patched-fonts/DejaVuSansMono
[p-droid]:patched-fonts/DroidSansMono
[p-fantasque]:patched-fonts/FantasqueSansMono
[p-fira-code]:patched-fonts/FiraCode
[p-fira-mono]:patched-fonts/FiraMono
[p-heavy-data]:patched-fonts/HeavyData
[p-hermit]:patched-fonts/Hermit
[p-inconsolata]:patched-fonts/Inconsolata
[p-inconsolata-go]:patched-fonts/InconsolataGo
[p-inconsolata-lgc]:patched-fonts/InconsolataLGC
[p-iosevka]:patched-fonts/Iosevka
[p-jetbrains-mono]:patched-fonts/JetBrainsMono
[p-hack]:patched-fonts/Hack
[p-lekton]:patched-fonts/Lekton
[p-liberation]:patched-fonts/LiberationMono
[p-meslo]:patched-fonts/Meslo
[p-monofur]:patched-fonts/Monofur
[p-monoid]:patched-fonts/Monoid
[p-mplus]:patched-fonts/MPlus
[p-noto]:patched-fonts/Noto
[p-opendyslexic]:patched-fonts/OpenDyslexic
[p-overpass]:patched-fonts/Overpass
[p-profont]:patched-fonts/ProFont
[p-proggy-clean]:patched-fonts/ProggyClean
[p-roboto]:patched-fonts/RobotoMono
[p-source-code-pro]:patched-fonts/SourceCodePro
[p-terminus]:patched-fonts/Terminus
[p-tinos]:patched-fonts/Tinos
[p-ubuntu]:patched-fonts/Ubuntu
[p-ubuntu-mono]:patched-fonts/UbuntuMono
[p-share-tech-mono]:patched-fonts/ShareTechMono
[p-space-mono]:patched-fonts/SpaceMono
[p-go-mono]:patched-fonts/Go-Mono
[p-gohu]:patched-fonts/Gohu
[p-mononoki]:patched-fonts/Mononoki
[p-code-nr]:patched-fonts/CodeNewRoman
[p-hasklig]:patched-fonts/Hasklig
[p-victor]:patched-fonts/VictorMono
[p-daddytimemono]:patched-fonts/DaddyTimeMono
[p-agave]:patched-fonts/Agave
[p-im-writing]:patched-fonts/iA-Writer


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
