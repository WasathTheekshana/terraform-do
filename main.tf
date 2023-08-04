terraform {
  cloud {
    organization = "wasath-personal"

    workspaces {
      name = "digitalocean-infra"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}


