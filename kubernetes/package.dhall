{ cert-manager =
      ./cert-manager/package.dhall
        sha256:1640fd5080778e8e9f565cf5790efe18ba9aa57599248b3c75425825be4ef739
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall
        sha256:8647ab484b4fb30bd527db24c7aa018c39ba4603ab9d1e03cd6ecc9d15b35ed2
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall
        sha256:fbc6a84266f779e6116e9570a96e2fec2179f045eb2860661059200c4653b59e
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall
        sha256:ce61ca8208927e9595a030a3fa467eb48794979031c3d026b4dbd57e5cc9942d
    ? ./argocd/package.dhall
, argo =
      ./argo/package.dhall
        sha256:7435a45fd240d3073f925c4ed5ad938d318757458ecdad5a32568feb27853021
    ? ./argo/package.dhall
, argo-events =
      ./argo-events/package.dhall
        sha256:c1dfad4c982bb700c2d2dcb7adbc325f5e67d1eb016a04551d41085411958c52
    ? ./argo-events/package.dhall
, ambassador =
      ./ambassador/package.dhall
        sha256:ca7db0c29acb78594833475fe737a918a943557139f1dce5e73f1e195453acde
    ? ./ambassador/package.dhall
, webhook =
      ./webhook/package.dhall
        sha256:2bb62a3b90daac1c90aa242b5e6746654f4988aa606c7f8c8434c1627d85f98f
    ? ./webhook/package.dhall
}
