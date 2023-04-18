# Define Local Values in Terraform
locals {
  # common artefact prefix
  aprefix          = "${var.company}-${var.bu}-${var.environment}"
  eks_cluster_name = "${var.company}-${var.bu}-${var.environment}-eks-cluster"
  common_tags = {
    company     = var.company
    bu          = var.bu
    billing_bu  = var.billing_bu
    environment = var.environment
  }
}
