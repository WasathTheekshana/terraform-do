data "digitalocean_account" "account_info" {}

output "droplet_limit" {
  value = data.digitalocean_account.account_info.droplet_limit
}