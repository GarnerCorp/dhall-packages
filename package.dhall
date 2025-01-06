{ kubernetes =
      ./kubernetes/package.dhall sha256:f5b0f0bb0bb538a7fd4c9e1a9a943a1711e8da30c8384f8474bebad545f62eb6
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v15.0.0/package.dhall sha256:6b90326dc39ab738d7ed87b970ba675c496bed0194071b332840a87261649dcd
    ? https://prelude.dhall-lang.org/v15.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
