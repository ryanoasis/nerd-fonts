# OMP agent icons

Two private-use glyphs for the oh-my-posh sshagent and gpgagent segments:

- U+FA000 omp_ssh_key
- U+FA001 omp_gpg_lock

Regenerate the symbol font, then pass it to the patcher:

    fontforge -quiet -script make_symbols.py OMPAgentIcons.ttf
    fontforge -quiet -script ../font-patcher <font> --custom OMPAgentIcons.ttf
