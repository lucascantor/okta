# ------------------------------------------------------------------------------------------
# Variables defined in Terraform Cloud

variable "api_token" {
  description = "Okta service account API token used by Terraform"
  type        = string
  sensitive   = true
}

# ------------------------------------------------------------------------------------------
# Variables

variable "base_url" {
  description = "Okta org domain, e.g., okta.com for the domain foo.okta.com"
  type        = string
  default     = "okta.com"
}

variable "org_name" {
  description = "Okta org subdomain, e.g., foo for the domain foo.okta.com"
  type        = string
  default     = "dev-8213717"
}
