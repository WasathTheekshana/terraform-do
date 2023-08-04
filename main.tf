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

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "sfo3"
  size   = "s-1vcpu-1gb"
}


