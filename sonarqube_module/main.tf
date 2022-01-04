resource "helm_release" "sonar" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
  version    = "6.5.0"
  namespace  = var.namespace

  set {
    name  = image.repository
    value = "mc1arke/sonarqube-with-community-branch-plugin"
  }
}