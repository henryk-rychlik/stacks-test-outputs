required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
  }
}
provider "random" "this" {}
component "pet" {
  source = "./pet"
  providers = {
    random = provider.random.this
  }
}
output "pet_name" {
  description = "The pet names"
  type        = list(string) 
  value       = component.pet.random_pet_kind 
}
# This mimics a resource output
output "aks_cluster_data" {
  # The type must be fully defined for Stacks to accept it
  type = map(object({
    current_kubernetes_version = map(string)
    id                         = map(string)
  }))

  value = {
    "cluster-01" = {
      current_kubernetes_version = { "1" = "1.33.5" }
      id                         = { "1" = "/subscriptions/id/resourceGroups/rg/providers/Microsoft.ContainerService/managedClusters/aks" }
    }
  }
}
