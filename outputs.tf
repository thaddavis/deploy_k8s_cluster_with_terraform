output "cluster_security_group_id" {
    description = "Security group ids attached to the cluster control plane."
    value = module.eks.cluster_security_group_id
    depends_on = [module.eks]
}

output "region" {
    description = "AWS region"
    value = var.region
}