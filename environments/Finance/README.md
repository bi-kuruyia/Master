<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_combined"></a> [combined](#module\_combined) | github.com/bi-kuruyia/Terraform-Modules/modules/combined | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_location"></a> [azure\_location](#input\_azure\_location) | la région géographique où sont localisées les ressources (weu, ne, us ...) | `string` | n/a | yes |
| <a name="input_azuread_owners"></a> [azuread\_owners](#input\_azuread\_owners) | tableau contenant les utilisateurs owners du groupe AD projet créé | `list(string)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | l’environnement du projet (dev, int, uat, prd ...) | `string` | n/a | yes |
| <a name="input_gh_organization_name"></a> [gh\_organization\_name](#input\_gh\_organization\_name) | le nom de votre organisation Github | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | le nom du projet à init (ex : sales, hr, finance ...) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
