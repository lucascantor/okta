# ------------------------------------------------------------------------------------------
# Terraform provider configuration

terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "3.28.0"
    }
  }
  cloud {
    organization = "unitizer"

    workspaces {
      name = "okta"
    }
  }
}

provider "okta" {
  api_token = var.api_token
  base_url  = var.base_url
  org_name  = var.org_name
}
