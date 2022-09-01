<h1 align="center">
  <img src="images/nerd-fonts-logo.png" alt="Nerd Fonts Logo" />
</h1>

[![GitHub release][img-version-badge-with-logo]][репозиторий]&nbsp;[![Gitter][img-gitter-badge]][gitter]&nbsp;[![CodeClimate][img-code-climate-badge]][code-climate]&nbsp;[![Code of Conduct][coc-badge]][coc]&nbsp;[![PRs Welcome][prs-badge]][prs]&nbsp;&nbsp;&nbsp;[![Windows Logo][w-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![macOS (OSX) Logo][m-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![Linux Logo][l-top]](#patched-fonts)


**Nerd Fonts** - это проект, который улучшает шрифты с большим количеством глифов (значков). В частности, добавляет большое количество значков из популярных 'символьных шрифтов', таких как [Font Awesome ➶][font-awesome], [Devicons ➶][vorillaz-devicons], [Octicons ➶][octicons] и [других](#glyph-sets).

На следующей Sankey-диаграме показаны текущие наборы глифов:

<p align="center">
  <img src="https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/custom-sankey-glyphs-combined-diagram.png" alt="@SankeyMATIC Diagram" />
</p>
<sub><i>Диаграма создана с помощью <a href="http://sankeymatic.com/" title="SankeyMATIC (BETA): A Sankey diagram builder for everyone">@SankeyMATIC</a></i></sub>


## Быстрая Навигация

| **[Последняя Версия ➶][release]** | **[Шрифты](#patched-fonts)** | **[Улучшатель шрифтов](#font-patcher)** | **[VimDevIcons ➶][vim-devicons]** | **[Скачать <br/>Пакеты Шрифтов ➶][release]** |
|:-------------------------------:|:---------------------------:|:----------------------------:|:---------------------------------:|:--------------------------------------------:|
| [![fonts-logo-small][ql-1]][release] | [![fonts-logo-small][ql-2]](#patched-fonts) | [![patcher-logo-small][ql-3]](#font-patcher) | [![vim-devicons-logo-small][ql-4]][vim-devicons] | [![fonts-logo-small][ql-5]][release] |


## Важные Замечания
* Пути к файлам ветки `master` **нестабильны**. [Проверить свою ссылку на репозиторий](#unstable-file-paths)
* Клонировать этот репозиторий **не** рекомендуется, если Вы не собираетесь [участвовать в разработке](#contributing)


## Содержание

[**TL;DR**](#tldr)

[**Параметры Установки**](#font-installation)
  * [**1 - Руководство**](#option-1-download-and-install-manually)
  * [**2 - Архив Выпусков**](#option-2-release-archive-download)
  * [**3 - Установочный Скрипт**](#option-3-install-script)
  * [**4 - Шрифты Homebrew (macOS (OS X))**](#option-4-homebrew-fonts)
  * [**5 - Клонировать репозиторий**](#option-5-clone-the-repo)
  * [**6 - Скачать Ad Hoc Curl**](#option-6-ad-hoc-curl-download)
  * [**7 - Пользовательский репозиторий Arch (AUR) (Arch Linux)**](#option-7-unofficial-arch-user-repository-aur)
  * [**8 - Исправить свой собственный шрифт**](#option-8-patch-your-own-font)

[**Особенности**](#features)
  * [**Наборы Глифов/Значков**](#glyph-sets)
  * [**Исправленные шрифты**](#patched-fonts)
  * [**Комбинации**](#combinations)
  * [**Улучшитель Шрифтов**](#font-patcher)

[**Разработчикам / Контрибьютерам**](#font-patcher)
  * [**Улучшитель Шрифтов**](#font-patcher)
  * [**Прокачай все шрифты!**](#gotta-patch-em-all)
  * [**Другие хорошие шрифты для улучшения**](#other-good-fonts-to-patch)
  * [**Сотрудничество в разработке**](#contributing)

[**Мотивация проекта**](#project-motivation)

**Дополнительная информация**
  * [**Нестабильные пути к файлам в master**](#unstable-file-paths)
  * [**Журнал изменений**](#changelog)
  * [**Лицензия**](#license)


## TL;DR
  Nerd Fonts использует популярные программные шрифты и добавляет кучу Значков.
  Существует также [Исправитель шрифтов](#font-patcher), если нужный Вам шрифт ещё не исправлен.
  Более подробную информацию смотрите в [wiki][wiki]. Если Вы ищете плагин Vim, смотрите [VimDevIcons ➶][vim-devicons].

### Различные варианты загрузки шрифтов

_Если Вы..._

  * `Вариант 1.` хотите **быстро** взять **отдельный шрифт**, то скачайте из [директории `patched-fonts/`](#patched-fonts)
  * `Вариант 2.` хотите скачать пакет вариаций (bold, italic и т.д.) **семейства шрифтов**, смотрите [скачать архив](#option-2-release-archive-download)
  * `Вариант 3.` хотите **автоматизировать** установку или использовать в **скриптах**, смотрите [установка скриптом](#option-3-install-script)
  * `Вариант 4.` пользователь **macOS** и хотите использовать **Homebrew**, смотрите [Homebrew Fonts](#option-4-homebrew-fonts)
  * `Вариант 5.` хотите **полный контроль**, смотрите [клонировать репозиторий](#option-5-clone-the-repo)
  * `Вариант 6.` хотите использовать **`curl` команду** или использовать её в **скриптах**, смотрите [Ad Hoc Curl Download](#option-6-ad-hoc-curl-download)
  * `Вариант 7.` пользователь **Arch Linux** и хотите использовать **AUR packages**, смотрите [Пользовательский репозиторий Arch (AUR)](#option-7-unofficial-arch-user-repository-aur)
  * `Вариант 8.` хотите улучшить свой собственный шрифт, смотрите [Улучшитель Шрифтов](#option-8-patch-your-own-font)

## Особенности
* [Python скрипт FontForge](#font-patcher) для улучшения любого шрифта
  * Включена возможность создания **Моноширинных (с фиксированным шагом, с фиксированной шириной)** _или_ **двойных (не моноширинных)** глифов
  * Для получения дополнительной информации смотрите раздел [**Улучшитель шрифтов**](#font-patcher)
* **`50`** [улучшенных семейства шрифтов](#patched-fonts)
* Более **`1,571,470`** уникальных комбинаций/вариантов улучшенненных шрифтов [(больше информации)](#combinations)
* Более **`1,300`** комбинаций глифов/значков [(больше информации)](#combinations)
  * Текущие наборы глифов включают: [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome],  [Devicons][vorillaz-devicons], [Octicons][octicons], [Font Linux][font-linux], [Pomicons][gabrielelana-pomicons]
* **Моноширинная (фиксированный шаг, фиксированная ширина)** _или_ "**двойные (не моноширинные)** глифы" версии каждого шрифта
  * Это относится к самим символам Nerd Font, не обязательно ко всему шрифту в целом
* Разработчик/Помощник предоставил [bash скрипт](#gotta-patch-em-all) для повторного исправления всех шрифтов


## Наборы значков

:mag: :mag: Теперь Вы можете легко искать глифы на [NerdFonts.com][Cheat Sheet] через [Cheat Sheet][]

### Seti-UI + Custom
> Основан на [Seti-UI] Icomoon с дополнительными пользовательскимим глифами.

![image](images/fontforge-glyph-set-1.png)

### [Devicons][vorillaz-devicons]
> "Символьный" шрифт, созданный для разработчиков, джедаев, ниндзя, HTTPстеров, евангелистов и ботаников. / ([репозиторий][vorillaz-devicons]) / ([сайт](https://vorillaz.github.io/devicons/))

![image](images/fontforge-glyph-set-2.png)

### [Font Awesome][font-awesome]
> "Символьный" шрифт и набор инструментов CSS. / ([репозиторий][font-awesome]) / ([сайт](http://fontawesome.io/))

![image](images/fontforge-glyph-set-font-awesome-1.png)
![image](images/fontforge-glyph-set-font-awesome-2.png)
![image](images/fontforge-glyph-set-font-awesome-3.png)
![image](images/fontforge-glyph-set-font-awesome-4.png)

### [Font Awesome Extension][font-awesome-extension]
> Простое удивительное расширение значков / ([репозиторий][font-awesome-extension]) / ([сайт](https://andrelzgava.github.io/font-awesome-extension/))

![image](images/fontforge-glyph-set-font-awesome-extension-1.png)

### [Octicons][octicons]
> Иконки из GitHub'а. / ([репозиторий][octicons]) / ([сайт](https://octicons.github.com))

#### Полный набор кодовых точек шрифта Nerd:*

![image](images/fontforge-glyph-set-octicons.png)

<sub>* Чтобы избежать конфликтов между наборами значков, они были изменены в 'Полных' шрифтах. Оригинальные кодовые точки: [Wiki](https://github.com/ryanoasis/nerd-fonts/wiki/Codepoint-Conflicts).</sub>

### [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
> Предоставляет дополнительные символы разделителей и символ номера столбца (CN). / ([репозиторий][ryanoasis-powerline-extra-symbols])

![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

### [IEC Power Symbols][website-iecpower]
> Добавляет новые символы в Unicode / ([сайт][website-iecpower])

![image](images/fontforge-glyph-set-font-iec-power-1.png)
![image](images/fontforge-glyph-set-font-iec-power-2.png)

### [Font Linux][font-linux]
> Font-linux содержит логотипы популярных дистрибутивов Linux, включая веб-сайты. / ([репозиторий][font-linux])

![image](images/fontforge-glyph-set-font-linux.png)

### [Pomicons][gabrielelana-pomicons]
> 8 значков для ["Метод Помидора"®](https://cirillocompany.de/pages/pomodoro-technique). / ([репозиторий][gabrielelana-pomicons])

![image](images/fontforge-glyph-set-pomicons.png)

### Имена значков в shell

Загрузите предоставленные `.sh` файлы из директории [bin/scripts/lib/](bin/scripts/lib/), рекомендуемое расположение `~/.local/share/fonts/` или `~/bin/`.

- `i_all.sh` - помощник для загрузки всех файлов, которые вы однажды скачали
- `i_dev.sh` - Devicons (198 иконок, 8 не имеют установленного имени)
- `i_fa.sh` - Font Awesome (675 иконок, 111 псевдонимов)
- `i_fae.sh` - Font Awesome Extension (170 иконок)
- `i_iec.sh` - IEC Power Symbols (5 иконок)
- `i_linux.sh` - Font Linux (20 иконок)
- `i_oct.sh` - Octicons (172 иконок)
- `i_ple.sh` - Powerline Extra Symbols (37 иконок, 2 псевдонима, 16 не имеют установленного имени)
- `i_pom.sh` - Pomicons (11 иконок)
- `i_seti.sh` - Seti-UI + Custom (50 иконок, 2 псевдонима, 5 без установленного имени)

Затем откройте `исходники` требуемых файлов и выведите `$i_*` переменные, чтобы увидеть значки:

```sh
source ~/.local/share/fonts/i_oct.sh
echo $i_oct_heart
# Output:
# ♥
```

**ЗАМЕЧАНИЕ:** Вы должны использовать один из Nerd Fonts, чтобы видеть правильные значки для некоторых наборов (Devicons, Font Awesome Extension, Font Linux), но остальные наборы должны работать со стандартными шрифтами тоже.


## Исправленные Шрифты

| Название Шрифта                                   | Название Шрифта и Репозиторий     |\*RFN |Размер EM| Статус            |
|:--------------------------------------------------|:----------------------------------|:-----|:--------|:------------------|
| [3270 Nerd Font][p-3270]                          | [3270][f-3270]                    | НЕТ  | 1000    | ![w2] ![m2] ![l2] |
| [Anonymice Nerd Font][p-anonymous-pro]            | [Anonymous Pro][f-a-pro]          | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Aurulent Sans Mono Nerd Font][p-aurulent]        |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Bitstream Vera Sans Mono Nerd Font][p-bitstream] |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Code New Roman Nerd Font][p-code-nr]             |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [DejaVu Sans Mono Nerd Font][p-dejavu]            |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Droid Sans Mono Nerd Font][p-droid]              |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Fantasque Sans Nerd Font][p-fantasque]           | [Fantasque Sans][f-fant]          | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Fura Code Nerd Font][p-fira-code]                | [Fira][f-fira-code]               | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Fura Mono Nerd Font][p-fira-mono]                | [Fira][f-fira-mono]               | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Gohu Nerd Font][p-gohu]                          | [Gohu][f-gohu]                    | НЕТ  | 1000    | ![w2] ![m2] ![l2] |
| [Hasklug Nerd Font][p-hasklig]                    | [Hasklig][f-hasklig]              | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Heavy Data Mono Nerd Font][p-heavy-data]         |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Hermut Nerd Font][p-hermit]                      |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Nerd Font][p-inconsolata]            |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Go Nerd Font][p-inconsolata-go]      |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Iosevka Nerd Font][p-iosevka]                    | [Iosevka][f-iosevka]              | ДА   | 1000    | [#83][s-iosevka]  |
| [JetBrains Mono][p-jetbrains-mono]                | [JetBrains Mono][f-jetbrains-mono]| NO   | 1000    | ![w] ![m2] ![l]   |
| [Knack Nerd Font][p-hack]                         | [Hack][f-hack]                    | ДА   | 2048    | ![w] ![m2] ![l]   |
| [Lekton Nerd Font][p-lekton]                      |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Literation Mono Nerd Font][p-liberation]         | [Liberation][f-liberation]        | ДА   | 2048    | ![w] ![m2] ![l]   |
| [Meslo Nerd Font][p-meslo]                        |                                   | НЕТ  | 2048    | ![w] ![m2] ![l]   |
| [Monofur Nerd Font][p-monofur]                    |                                   | НЕТ  | 2400    | ![w] ![m2] ![l]   |
| [Monoid Nerd Font][p-monoid]                      |                                   | НЕТ  | 1536    | ![w] ![m2] ![l]   |
| [Mononoki Nerd Font][p-mononoki]                  | [Mononoki][f-mononoki]            | НЕТ  | 1024    | ![w] ![m2] ![l]   |
| [M+ (MPlus) Nerd Font][p-mplus]                   |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [ProFont (Windows tweaked) Nerd Font][p-profont]  |                                   | НЕТ  | 1200    | ![w] ![m2] ![l]   |
| [ProFont (x11) Nerd Font][p-profont]              |                                   | НЕТ  | 1000    | [FAILING]         |
| [ProggyClean Nerd Font][p-proggy-clean]           |                                   | НЕТ  | 2048    | [FAILING]         |
| [Roboto Mono][p-roboto]                           |                                   | НЕТ  | 2048    | [FAILING]         |
| [Sauce Code Nerd Font][p-source-code-pro]         | [Source][f-source]                | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Shure Tech Mono Nerd Font][p-share-tech-mono]    | [Share Tech Mono][f-share]        | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Space Mono Nerd Font][p-space-mono]              | [Space Mono][f-space]             | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Terminess Nerd Font][p-terminus]                 | [Terminus Font][f-terminus]       | ДА   | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Nerd Font][p-ubuntu]                      |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Mono Nerd Font][p-ubuntu-mono]            |                                   | НЕТ  | 1000    | ![w] ![m2] ![l]   |

<sub>_*RFN (Reserved Font Name) — зарезервированное название шрифта_</sub>

## Комбинации

- Более **`1,485,000`** уникальных вариантов/комбинаций (Power Set) улучшенных шрифтов:
  - **`50`** улучшенных набора шрифтов
  - **`719`** улучшенных семейств шрифтов
  - **`2,876`** 'выполненных' вариантов/комбинаций
  - **`'1,485,410'`** _возможных_ варианта/комбинации
  - **`1,488,286`** всего вычислено комбинаций (2,876 + 1,428,110)
- Комбинация для каждого шрифта - это любая комбинация [Вариаций](#variations)

### Вариации

- не указаны флаги (по умолчанию **Seti-UI + Custom** и **[Devicons][vorillaz-devicons]**)
- **двойная _(variable/proportional)_** или **обычная _(fixed/monospaced)_** ширина символов
- [Font Awesome][font-awesome]
- [Font Awesome Extension][font-awesome-extension]
- [GitHub Octicons][octicons]
- [Font Linux][font-linux]
- [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
- [IEC Power Symbols][website-iecpower]
- [Pomicons][gabrielelana-pomicons]
- Совместимость с Windows


## Установка

### `Вариант 1: Скачать и установить вручную`

> Лучший вариант для **быстрого** получения конкретного **индивидуального шрифта**.

Скачайте конкретный [улучшенный шрифт](#patched-fonts) на Ваш выбор

### `Вариант 2: Скачать журнал версий`

> Лучший вариант, если вам нужен **архив** или полное **семейство шрифтовых** вариаций (Bold, Italic и т.д.).

Шрифты доступны для скачивания в виде пакетов в [последней версии](https://github.com/ryanoasis/nerd-fonts/releases/latest)

### `Вариант 3: Установить скрипт`

> Лучший вариант, если вы хотите **автоматизировать** установку или использовать в **скриптах**.

_Замечание_: Только для Linux & macOS (OS X)
_Замечание_: **Необходимо клонировать** текущее состояние репозитория

#### Все шрифты:

* Установить все улучшенные шрифты (_Замечание: Многие шрифты занимают много памяти_)

```sh
./install.sh
```

#### Один шрифт:

* Установка одного шрифта по Вашему выбору

```sh
./install.sh <FontName>
./install.sh Hack
./install.sh HeavyData
```

### `Вариант 4: Homebrew Fonts`

> Лучший вариант, если у Вас **macOS** и Вы хотите использовать **Homebrew**.

Все шрифты доступны через [Homebrew Fonts](https://github.com/caskroom/homebrew-fonts) на macOS (OS X)

```sh
brew tap caskroom/fonts
brew install --cask font-hack-nerd-font
```

### `Вариант 5: Клонировать Репозиторий`

> Лучший выбор для **полного контроля всех** или **большинства** шрифтов, или для **помощи** в разработке.

Клонирование этого репозитория **не** требуется и неэффективно, если Вас интересует только ограниченный набор шрифтов.

Однако, если Вы хотите клонировать репозиторий, обязательно выполните _мелкое_ клонирование:
```sh
git clone --depth 1
```

### `Вариант 6: Скачать Ad Hoc Curl`

> Вариант для тех, кто хочет использовать **`curl` команды** или для использования в **скриптах**.

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

_Внимание:_ устаревшие альтернативные пути: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

### `Вариант 7: Пользовательский репозиторий Arch (AUR)`

> Вариант для **Arch Linux** и использования **AUR packages**.

Следующие шрифты доступны через [AUR packages](https://aur.archlinux.org/) на Arch Linux:

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

### `Вариант 8: Улучшить Свой Шрифт`

> Опция для **исправления** Вашего **собственного шрифта** или полная **настройка** улучшенного шрифта.

Используйте Python-скрипт для командной строки, чтобы создавать улучшенный шрифт из вашего собственного шрифта с дополнительными новыми символами.

Смотрите: [Font Patcher](#font-patcher) для использования
* используйте эту опцию, если вы __не__ хотите использовать один из [предоставленных шрифтов](#patched-fonts)
* Вас всё равно придётся копировать созданный шрифт в корректную директорую шрифтов в Вашей системе


<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</h2>

Исправление шрифта по собственному выбору для использования с [VimDevIcons ➶][vim-devicons]:
* требуется: Python 2 (или Python 3), python-fontforge package (версия 20141231 или более поздние, смотрите
  [инструкцию по установке](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* альтернативный способ установки на macOS (OS X): `brew install fontforge`
* Используйте:

```
./font-patcher PATH_TO_FONT
```

* Альтернативное использование: Запустите патчер с помощью двоичного файла FontForge, используя флаг скрипта:

```
./fontforge -script font-patcher PATH_TO_FONT
```


```
usage: font-patcher [-h] [-v] [-s] [-l] [-q] [-w] [-c] [--careful] [--removeligs]
                    [--postprocess [POSTPROCESS]] [--configfile [CONFIGFILE]]
                    [--custom [CUSTOM]] [-ext [EXTENSION]] [-out [OUTPUTDIR]]
                    [--glyphdir [GLYPHDIR]] [--makegroups]
                    [--progressbars | --no-progressbars] [--also-windows]
                    [--fontawesome] [--fontawesomeextension] [--fontlinux]
                    [--octicons] [--codicons] [--powersymbols] [--pomicons]
                    [--powerline] [--powerlineextra] [--material] [--weather]
                    font

Nerd Fonts Font Patcher: patches a given font with programming and development related glyphs

* Website: https://www.nerdfonts.com
* Version: 2.2.1
* Development Website: https://github.com/ryanoasis/nerd-fonts
* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md

positional arguments:
  font                  The path to the font to patch (e.g., Inconsolata.otf)

options:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -s, --mono, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not double-width (default is double-width)
  -l, --adjust-line-height
                        Whether to adjust line heights (attempt to center powerline separators more evenly)
  -q, --quiet, --shutup
                        Do not generate verbose output
  -w, --windows         Limit the internal font name to 31 characters (for Windows compatibility)
  -c, --complete        Add all available Glyphs
  --careful             Do not overwrite existing glyphs if detected
  --removeligs, --removeligatures
                        Removes ligatures specificed in JSON configuration file
  --postprocess [POSTPROCESS]
                        Specify a Script for Post Processing
  --configfile [CONFIGFILE]
                        Specify a file path for JSON configuration file (see sample: src/config.sample.json)
  --custom [CUSTOM]     Specify a custom symbol font. All new glyphs will be copied, with no scaling applied.
  -ext [EXTENSION], --extension [EXTENSION]
                        Change font file type to create (e.g., ttf, otf)
  -out [OUTPUTDIR], --outputdir [OUTPUTDIR]
                        The directory to output the patched font file to
  --glyphdir [GLYPHDIR]
                        Path to glyphs to be used for patching
  --makegroups          Use alternative method to name patched fonts (experimental)
  --progressbars        Show percentage completion progress bars per Glyph Set
  --no-progressbars     Don't show percentage completion progress bars per Glyph Set
  --also-windows        Create two fonts, the normal and the --windows version

Symbol Fonts:
  --fontawesome         Add Font Awesome Glyphs (http://fontawesome.io/)
  --fontawesomeextension
                        Add Font Awesome Extension Glyphs (https://andrelzgava.github.io/font-awesome-extension/)
  --fontlinux, --fontlogos
                        Add Font Linux and other open source Glyphs (https://github.com/Lukas-W/font-logos)
  --octicons            Add Octicons Glyphs (https://octicons.github.com)
  --codicons            Add Codicons Glyphs (https://github.com/microsoft/vscode-codicons)
  --powersymbols        Add IEC Power Symbols (https://unicodepowersymbol.com/)
  --pomicons            Add Pomicon Glyphs (https://github.com/gabrielelana/pomicons)
  --powerline           Add Powerline Glyphs
  --powerlineextra      Add Powerline Glyphs (https://github.com/ryanoasis/powerline-extra-symbols)
  --material, --materialdesignicons, --mdi
                        Add Material Design Icons (https://github.com/templarian/MaterialDesign)
  --weather, --weathericons
                        Add Weather Icons (https://github.com/erikflowers/weather-icons)
```

#### Примеры

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
## Давайте прокачаем все шрифты!

* для использования Контрибьюторами или Разработчиками

* улучшайте **все** шрифты в 'неулучшенном' каталоге:
```
./gotta-patch-em-all-font-patcher\!.sh
```

* можно задать определенный шаблон имени шрифта:
```
./gotta-patch-em-all-font-patcher\!.sh Hermit
```


## Сотрудничество в разработке

Смотрите [contributing.md](contributing.md)


## Нестабильные пути к файлам

:warning: Предупреждение: Пути файлов могут изменяться в зависимости от релизов (особенно после **крупных** релизов)

Ссылка на ветвь **release**, а не на ветку ~~master~~, потому что пути изменяются для каждой версии

* Например:
  * :white_check_mark: Используйте: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<b>0.9.0</b>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>
  * :x: Вместо: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<del>master</del>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>


## Другие Хорошие Шрифты Для Улучшения

* список дополнительных хороших шрифтов для исправления, которые я не могу предоставить или поделиться из-за лицензии:
 * [Input Mono][input-mono] (ограниченная лицензия)
   * Возможно с внешним хостингом :)
 * [PragmataPro][pragmatapro] (не бесплатный)
 * [Consolas][consolas] (патентованный)


## Мотивация Проекта

Смотрите [Wiki: Project Purpose][wiki-project-purpose]


## Журнал Изменений

Смотрите [changelog.md](changelog.md)

## Лицензия

[MIT](LICENSE) © Ryan L McIntyre

<!--
Repo References
-->

[vim-devicons]:https://github.com/ryanoasis/vim-devicons "VimDevIcons Vim Plugin (external link) ➶"
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[font-awesome-extension]:https://github.com/AndreLZGava/font-awesome-extension
[octicons]:https://github.com/primer/octicons
[font-linux]:https://github.com/Lukas-W/font-linux
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
