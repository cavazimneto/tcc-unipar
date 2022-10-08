resource "digitalocean_kubernetes_cluster" "unicluster" {
  name    = "unicluster"
  region  = "nyc1"
  version = "1.24.4-do.0"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}

terraform {
  cloud {
    organization = "dcavazim"

    workspaces {
      name = "example-workspace"
    }
  }
}