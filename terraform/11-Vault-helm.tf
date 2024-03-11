resource "helm_release" "vault" {
  name       = "vault"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "vault"
  version    = "0.27.0"

  namespace        = "vault"
  create_namespace = true

  set {
    name  = "server.dev.enabled"
    value = "true"
  }

  set {
    name  = "injector.enabled"
    value = "false"
  }

  set {
    name  = "ui.enabled"
    value = "true"
  }
}
