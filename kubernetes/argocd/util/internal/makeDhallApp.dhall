{-
    This assumes that you have installed dhall-to-yaml
    in your argocd repo server.
    See https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts
    for more information
-}
let TypesUnion =
        ../../TypesUnion.dhall
          sha256:d44accc04431078bc49cb9adf3a7144a4a2e961082e26073146ee9181bdbaca5
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall
          sha256:c88bb716d8533593cda61e3ec65ce361a32bcd0f5d0849689ef1286cc43e1a51
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall
          sha256:1fad326e2263f4ee6aa646f576be7b900c8e9ff5b275f1076da2c0a0ea39095f
      ? ../../ApplicationSpec/package.dhall

let SourceSpec =
        ../../SourceSpec/package.dhall
          sha256:f1b96820008516f6b2e5a3fb8a2a30197a0c3e828db3d105a04b5a4c060729a0
      ? ../../SourceSpec/package.dhall

let PluginSourceSpec =
        ../../PluginSourceSpec/package.dhall
          sha256:0d6745d353c85c4724b82b3bdba302e8c524349ee2b3a5d68c6916072af39b97
      ? ../../PluginSourceSpec/package.dhall

let PluginSpec =
        ../../PluginSpec/package.dhall
          sha256:fd9dd420c9ea830231af7e7893ea217f2f7ca35c313cd0a319f80443ac6c84b9
      ? ../../PluginSpec/package.dhall

let k8s =
        ../../../k8s/1.15.dhall
          sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../../k8s/1.15.dhall

in  \ ( appConfig
      :   ../DhallAppConfig/Type.dhall
            sha256:b870b087d04ed906a4b912f2333e66fd43db05bdcea36740a6cd707a380b4a72
        ? ../DhallAppConfig/Type.dhall
      ) ->
        TypesUnion.Application
          Application::{
          , metadata = k8s.ObjectMeta::{ name = Some appConfig.name }
          , spec = ApplicationSpec::{
            , project = appConfig.project
            , source =
                SourceSpec.TypesUnion.Plugin
                  PluginSourceSpec::{
                  , repoURL = appConfig.source.url
                  , path = appConfig.source.path
                  , targetRevision = appConfig.source.targetRevision
                  , plugin = PluginSpec::{
                    , name = "dhall-to-yaml"
                    , env = Some appConfig.parameters
                    }
                  }
            , destination = appConfig.destination
            , syncPolicy = appConfig.syncPolicy
            , ignoreDifferences = Some appConfig.ignoreDifferences
            }
          }
      : TypesUnion
