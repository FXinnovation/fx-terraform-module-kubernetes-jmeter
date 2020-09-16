# terraform-module-multi-template

Template repository for public terraform modules

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| kubernetes | >= 1.10.0 |
| random | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| kubernetes | >= 1.10.0 |
| random | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| annotations | Map of annotations to apply on all kubernetes resources. | `map` | `{}` | no |
| image | Docker image to use for jmeter. | `string` | `"pedrocesarti/jmeter-docker"` | no |
| image\_version | Docker image tag to use for jmeter. | `string` | `"latest"` | no |
| labels | Map of labels to apply on all kubernetes resources. | `map` | `{}` | no |
| master\_deployment\_annotations | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| master\_deployment\_labels | Map of labels that will be applied on the master's deployment. | `map` | `{}` | no |
| master\_deployment\_name | Name of the master's deployment that is created. | `string` | `"jmeter-master"` | no |
| master\_deployment\_template\_annotations | Map of annotations that will be applied on the master's deployment template. | `map` | `{}` | no |
| master\_deployment\_template\_labels | Map of labels that will be applied on the master's deployment template. | `map` | `{}` | no |
| master\_envs | Map of string representing environment variables defined in the jmeter master container. | `map(string)` | `{}` | no |
| master\_replicas | Number of master pod replicas that are always up and available | `number` | `1` | no |
| master\_resources\_limits\_cpu | Describes the maximum amount of CPU resources allowed to the master jmeter container. | `string` | `"1"` | no |
| master\_resources\_limits\_memory | Describes the maximum amount of memory resources allowed to the master jmeter container. | `string` | `"1024Mi"` | no |
| master\_resources\_requests\_cpu | Describes the minimum amount of CPU requests required to the master jmeter container. | `string` | `"100m"` | no |
| master\_resources\_requests\_memory | Describes the minimum amount of memory requests required to the master jmeter container. | `string` | `"512Mi"` | no |
| namespace | Name of the namespace in which to deploy the module. | `string` | `"default"` | no |
| pvc\_access\_modes | A set of the desired access modes the volume should have. | `list` | <pre>[<br>  "ReadWriteOnce"<br>]</pre> | no |
| pvc\_annotations | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| pvc\_labels | Map of labels that will be applied on the persistent volume claim. | `map` | `{}` | no |
| pvc\_name | Name of the persistent volume claim that is created. | `string` | `"jmeter"` | no |
| pvc\_resources\_requests\_storage | Minimum amount of storage that will be applied to persistent volume claim. | `string` | `"5Gi"` | no |
| pvc\_storage\_class\_name | Name of the storage class that will be applied to persistent volume claim. | `string` | `null` | no |
| pvc\_volume\_name | Name of the volume bound to the persistent volume claim. | `string` | `""` | no |
| pvc\_wait\_until\_bound | Whether to wait for the claim to reach Bound state (to find volume in which to claim the space) | `bool` | `false` | no |
| service\_annotations | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| service\_labels | Map of labels that will be applied on the service. | `map` | `{}` | no |
| service\_name | Name of the service that is created. | `string` | `"jmeter-slaves"` | no |
| slave\_deployment\_annotations | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| slave\_deployment\_labels | Map of labels that will be applied on the slave's deployment. | `map` | `{}` | no |
| slave\_deployment\_name | Name of the slave's deployment that is created. | `string` | `"jmeter-slave"` | no |
| slave\_deployment\_template\_annotations | Map of annotations that will be applied on the slave's deployment template. | `map` | `{}` | no |
| slave\_deployment\_template\_labels | Map of labels that will be applied on the slave's deployment template. | `map` | `{}` | no |
| slave\_envs | Map of string representing environment variables defined in the jmeter slave container. | `map(string)` | `{}` | no |
| slave\_replicas | Number of slave pod replicas that are always up and available | `number` | `3` | no |
| slave\_resources\_limits\_cpu | Describes the maximum amount of CPU resources allowed to the slave jmeter container. | `string` | `"1"` | no |
| slave\_resources\_limits\_memory | Describes the maximum amount of memory resources allowed to the slave jmeter container. | `string` | `"1024Mi"` | no |
| slave\_resources\_requests\_cpu | Describes the minimum amount of CPU requests required to the slave jmeter container. | `string` | `"100m"` | no |
| slave\_resources\_requests\_memory | Describes the minimum amount of memory requests required to the slave jmeter container. | `string` | `"512Mi"` | no |

## Outputs

| Name | Description |
|------|-------------|
| deployment\_master | n/a |
| deployment\_slave | n/a |
| persistent\_volume\_claim | n/a |
| service | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
