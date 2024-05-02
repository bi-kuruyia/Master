variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
}

variable "gh_organization_name" {
  type        = string
  description = "le nom de votre organisation Github"
}

variable "azure_location" {
  type        = string
  description = "la région géographique où sont localisées les ressources (weu, ne, us ...)"
}

variable "environment" {
  type        = string
  description = "l’environnement du projet (dev, int, uat, prd ...)"
}

variable "azuread_owners" {
  type        = list(string)
  description = "tableau contenant les utilisateurs owners du groupe AD projet créé"
}
