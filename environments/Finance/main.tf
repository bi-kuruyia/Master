terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }

    azuread = {
      source = "hashicorp/azuread"
    }

    github = {
      source = "integrations/github"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

provider "github" {
  owner = var.gh_organization_name
}

module "combined" {
  source = "github.com/bi-kuruyia/Terraform-Modules/modules/combined"

  project               = var.project
  environment           = var.environment
  members               = csvdecode(file("${path.module}/members.csv"))
  gh_organization_name  = var.gh_organization_name
  azure_location        = var.azure_location
  azuread_owners        = var.azuread_owners

  providers = {
    azurerm = azurerm,
    azuread = azuread,
    github = github
  }
}
