# Miracode

Angular, vector-drawn monospaced typeface by Idrees Hassan, based on Monocraft,
with programming ligatures.

Upstream: https://github.com/IdreesInc/Miracode

Version: 1.0 (unreleased source-review build; not the upstream 1.0 release binary)

This is a draft inclusion proposal. Do not release these review binaries as
official upstream artifacts. Their source changes are proposed in:

- https://github.com/IdreesInc/Miracode/pull/21 (base repairs)
- https://github.com/IdreesInc/Miracode/pull/22 (reproducible Nerd Font build)
- https://github.com/IdreesInc/Miracode/pull/23 (source Bold and optical accents)

Exact reviewed source tree:
https://github.com/SimonRiemertzon/Miracode/tree/d59b18a

Build with FontForge20230101 and fontTools4.63.0 using
`python tools/build.py --with-bold --base-only`. Only the unpatched Regular
and Bold source faces are included here. Replace them with an accepted,
versioned upstream build before marking this proposal ready for release.

The standard forced-Mono variant is intentionally disabled: it collapses
Miracode's multi-cell ligature advances to one cell. Normal and Propo variants
retain the ligatures. The upstream build proposal uses
`--single-width-glyphs` for safe single-cell icons without forcing source
ligatures into one cell. A safe catalog Mono route needs maintainer review.

The upstream release build also fits155 added icons inside the text metrics;
the catalog patcher does not run that postprocessing. Review icon containment
alongside the final accepted upstream font before release.

Font license: SIL Open Font License1.1, with no Reserved Font Name declaration.
The generator's GPL license is separate from the generated font's OFL license.

AI assistance: OpenAI Codex (GPT-6.1). This draft and the source changes were
prepared by an AI agent, informed by the contributor's font-rendering feedback.
