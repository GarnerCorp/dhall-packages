{ dependencies =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.EventDependency.dhall
                 sha256:999968e4fec01dacd5adde195e67ec343538748208cb57d4d0cfa44d097f328e
             ? ./../types/io.argoproj.sensor.v1alpha1.EventDependency.dhall
           )
, dependencyGroups =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
                 sha256:425a051e95a326d1c520c3453f5610f346a24199fc9e80139697a34c9c1347ae
             ? ./../types/io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
           )
, eventProtocol =
      ./io.argoproj.common.EventProtocol.dhall
        sha256:65823d7a1d46ecb511dc3e55892be011e726346b6b7a436258d783490b36ba5a
    ? ./io.argoproj.common.EventProtocol.dhall
, triggers =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.Trigger.dhall
                 sha256:585821a3cee06a33a3c00171355657ea50a7d27897e08159db4f96fc67294305
             ? ./../types/io.argoproj.sensor.v1alpha1.Trigger.dhall
           )
, circuit = None Text
, errorOnFailedRound = None Bool
}
