terraform {
  backend "kubernetes" {
    secret_suffix    = "state"
    config_path      = "~/.kube/config"
  }
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "example-namespace"
  }
}