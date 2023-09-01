terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

provider "digitalocean" {
  token = "<export TF_VAR_do_token=<value>>"
}

module "wp_stack" {
  source      = "fernandokoj3/wp_do/digitalocean"
  version     = "1.0.0"
  region      = var.region
  wp_vm_count = var.wp_vm_count
  vms_ssh     = digitalocean_ssh_key.ssh.fingerprint
}

resource "digitalocean_ssh_key" "ssh" {
  name       = "<name>"
  public_key = file("~/.ssh/<id_rsa.pub>")
}

