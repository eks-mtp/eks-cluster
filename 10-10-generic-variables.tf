variable "aws_region" {
  description = "Region in which AWS Resources will be created."
  type        = string
  default     = "eu-central-1"
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