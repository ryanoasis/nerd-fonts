# Chocolatey packages for nerd-fonts

Script to generate chocolatey packages for nerd-fonts.

## Requirements

- [pipenv](https://github.com/pypa/pipenv/)
- [PyYAML](https://pyyaml.org/)
- [chocolatey](https://chocolatey.org/)

## Setup

- Run `pipenv install` to setup the virtual environment.
- Ensure that `choco` binary is in the `PATH`.

## Usage

Run the `generate_packages.py` which reads `fonts.yml` file and generates the chocolatey packages.

### fonts.yml

The `YAML` file describes the fonts to be packaged.

- `version`: The version of nerd-fonts to be downloaded.
- `fonts.name`: The name of the nerd-font as per the `github release assets`.
- `fonts.sha256`: The `SHA256` hash of the zip file.
- `fonts.installed_fonts`: The list of fonts in the zip file.

