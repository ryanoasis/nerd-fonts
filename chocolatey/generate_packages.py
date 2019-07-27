from __future__ import print_function
import os
import re
import shutil
import subprocess
import sys
import xml.etree.ElementTree as ET
import yaml

XMLNS = {'nuspec': 'http://schemas.microsoft.com/packaging/2015/06/nuspec.xsd'}


def pwd():
    """ Current dir of the script. """
    return os.path.realpath(os.path.dirname(sys.argv[0]))


def kebab_case(inp):
    """ Convert from `CamelCase` to `kebab-case`. """
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1-\2', inp)
    return re.sub('([a-z0-9])([A-Z])', r'\1-\2', s1).lower()


def generate_nuspec(font, version):
    """ Write the `.nuspec` file. """
    font_id = kebab_case(font) + '-nerd-font'
    # Parse the tree
    tree = ET.parse('base.nuspec')
    root = tree.getroot()
    # id
    id_ = root[0].find('nuspec:id', namespaces=XMLNS)
    id_.text = font_id
    # version
    ver_ = root[0].find('nuspec:version', namespaces=XMLNS)
    ver_.text = version
    # title
    title_ = root[0].find('nuspec:title', namespaces=XMLNS)
    title_.text = font + ' Nerd Font'

    font_dir = os.path.join(pwd(), font_id)
    if not os.path.exists(font_dir):
        os.mkdir(font_dir)

    with open(os.path.join(font_dir, font_id + '.nuspec'), 'wb') as f:
        f.write(ET.tostring(root, encoding='utf8'))

    # Copy tools
    tools_src_dir = os.path.join(pwd(), 'tools')
    tools_dest_dir = os.path.join(font_dir, 'tools')
    if os.path.exists(tools_dest_dir):
        shutil.rmtree(tools_dest_dir)
    shutil.copytree(tools_src_dir, tools_dest_dir)


def generate_choco_scripts(font, version, sha256_hash, installed_fonts):
    """ Generates chocolatey install and uninstall scripts """
    # Install script
    font_id = kebab_case(font)
    tools_dir = os.path.join(pwd(), font_id + '-nerd-font', 'tools')
    with open(os.path.join(tools_dir, 'chocolateyinstall.ps1'), 'r+') as f:
        script = f.read()
        script = script.format(
            font=font,
            version='v%s' % (version),
            hash=sha256_hash)
        f.seek(0)
        f.write(script)

    with open(os.path.join(tools_dir, 'chocolateybeforemodify.ps1'), 'r+') as f:
        script = f.read()
        script = script.format(fonts=','.join('"%s"' % (x) for x in installed_fonts))
        f.seek(0)
        f.write(script)


def main():
    """ Generate chocolatey `.nuspec` files. """

    print('Reading config')
    with open('fonts.yml') as f:
        config = yaml.load(f)

    # generate `.nuspec`
    for font in config['fonts']:
        print('Generating chocolatey package for', font['name'])
        generate_nuspec(font['name'], config['version'])
        generate_choco_scripts(font['name'], config['version'], font['sha256'],
                               font['installed_fonts'])

    # create choco `.nupkg` package
    for dir_ in os.listdir(pwd()):
        if os.path.isdir(dir_) and dir_ != 'tools':
            subprocess.call
            print('Packaging', dir_)
            subprocess.call(['choco', 'pack'], cwd=os.path.join(pwd(), dir_))

    print('Done')


if __name__ == '__main__':
    main()
