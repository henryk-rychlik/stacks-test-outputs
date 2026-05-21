deployment "simple" {
}

publish_output "simple_pet" {
  description = "The generated pet name for the simple deployment."
#  value       = deployment.simple.pet_name
}

publish_output "k8s_clusters" {
  description = "Exported K8s cluster map"
  value       = deployment.simple.aks_cluster_data
}

publish_output "simple_pet2" {
  description = "The generated pet name for the simple deployment."
  value       = deployment.simple.pet_name
}

publish_output "simple_pet3" {
  description = "The generated pet name for the simple deployment."
  value       = deployment.simple.pet_name
}
