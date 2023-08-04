terraform {
  cloud {
    organization = "wasath-personal"

    workspaces {
      name = "digitalocean-infra"
    }
  }
}
terraform {
  backend "remote" {
    organization = "wasath-personal"

    workspaces {
      name = "digitalocean-infra"
    }
  }
}
provider "digitalocean" {
  token = var.do_token
}


