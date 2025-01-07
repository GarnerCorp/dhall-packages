{ kubernetes =
      ./kubernetes/package.dhall sha256:f5b0f0bb0bb538a7fd4c9e1a9a943a1711e8da30c8384f8474bebad545f62eb6
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v23.0.0/package.dhall sha256:397ef8d5cf55e576eab4359898f61a4e50058982aaace86268c62418d3027871
    ? https://prelude.dhall-lang.org/v23.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
