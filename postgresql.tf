resource "helm_release" "postgresql" {
  name       = "postgresql"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  version    = "10.3.17"

  set {
    name  = "postgresqlUsername"
    value = "user"
  }

  set {
    name  = "postgresqlPassword"
    value = "password"
  }

  set {
    name  = "postgresqlDatabase"
    value = "database"
  }

  set {
    name  = "persistence.enabled"
    value = "true"
  }

  set {
    name  = "persistence.mountPath"
    value = "/bitnami/postgresql"
  }

}
