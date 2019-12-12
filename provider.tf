provider "google" {
  credentials = file("/vagrant/turma03-infraagil-260123-fbab8a917769.json")
  project     = "turma03-infraagil-260123"
  region      = var.zonec1
}
