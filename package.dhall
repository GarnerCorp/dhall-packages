{ kubernetes =
      ./kubernetes/package.dhall
        sha256:d73d6568c27c2c7e479d61487948a4332d944949e350f84c0ac6a2961bafd09b
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v23.0.0/package.dhall
        sha256:397ef8d5cf55e576eab4359898f61a4e50058982aaace86268c62418d3027871
    ? https://prelude.dhall-lang.org/v23.0.0/package.dhall
, util =
      ./util/package.dhall
        sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
