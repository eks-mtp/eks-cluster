variable "aws_region" {
  description = "Region in which AWS Resources will be created."
  type        = string
  default     = "eu-central-1"
}

variable "aws_cli_profile" {
  description = "Name of AWS CLI profile. This will give terraform access to respective AWS account where resources will be provisioned."
  type        = string
  default     = "eks_mtp"
}

variable "company" {
  description = "Name of the company. Will be used in constructing the prefix for most of the artefacts, e.g. acme-it-dev-eks-cluster."
  type        = string
  default     = "acme"
}

variable "bu" {
  description = "Business unit of the company. Examples: hr, trading, finance, risk, it, etc..."
  type        = string
  default     = "risk"
}

variable "billing_bu" {
  description = "Billing Business unit of the company. In general: multiple BUs may be billed under same billing_bu. Used for resource tagging."
  type        = string
  default     = "risk"
}

variable "environment" {
  description = "Name of the environment. Will be used in constructing the prefix for most of the artefacts, e.g. acme-it-dev-eks-cluster."
  type        = string
  default     = "dev"
}