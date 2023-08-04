terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wasath-personal"
    workspaces {
      name = "digitalocean-infra"
    }
  }
}
provider "digitalocean" {
  token = var.do_token
}


