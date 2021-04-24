resource "helm_release" "sonarqube" {
  name       = "sonarqube"
  repository = "https://oteemo.github.io/charts"
  chart      = "sonarqube"

  set {
    name  = "persistence.enabled"
    value = "true"
  }

  set {
    name  = "postgresql.enabled"
    value = "false"
  }

  set {
    name  = "postgresql.postgresqlUsername"
    value = "user"
  }

  set {
    name  = "postgresql.postgresqlPassword"
    value = "password"
  }

  set {
    name  = "postgresql.postgresqlDatabase"
    value = "database"
  }

  set {
    name  = "postgresql.postgresqlServer"
    value = "postgresql"
  }

}
