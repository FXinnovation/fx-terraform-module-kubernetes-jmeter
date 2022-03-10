# terraform-module-multi-template

Template repository for public terraform modules

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 1.10.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 1.10.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.master](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_deployment.slave](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_persistent_volume_claim.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_claim) | resource |
| [kubernetes_service.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [random_string.selector](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotations"></a> [annotations](#input\_annotations) | Map of annotations to apply on all kubernetes resources. | `map` | `{}` | no |
| <a name="input_image"></a> [image](#input\_image) | Docker image to use for jmeter. | `string` | `"pedrocesarti/jmeter-docker"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Docker image tag to use for jmeter. | `string` | `"latest"` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Map of labels to apply on all kubernetes resources. | `map` | `{}` | no |
| <a name="input_master_deployment_annotations"></a> [master\_deployment\_annotations](#input\_master\_deployment\_annotations) | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| <a name="input_master_deployment_labels"></a> [master\_deployment\_labels](#input\_master\_deployment\_labels) | Map of labels that will be applied on the master's deployment. | `map` | `{}` | no |
| <a name="input_master_deployment_name"></a> [master\_deployment\_name](#input\_master\_deployment\_name) | Name of the master's deployment that is created. | `string` | `"jmeter-master"` | no |
| <a name="input_master_deployment_template_annotations"></a> [master\_deployment\_template\_annotations](#input\_master\_deployment\_template\_annotations) | Map of annotations that will be applied on the master's deployment template. | `map` | `{}` | no |
| <a name="input_master_deployment_template_labels"></a> [master\_deployment\_template\_labels](#input\_master\_deployment\_template\_labels) | Map of labels that will be applied on the master's deployment template. | `map` | `{}` | no |
| <a name="input_master_envs"></a> [master\_envs](#input\_master\_envs) | Map of string representing environment variables defined in the jmeter master container. | `map(string)` | `{}` | no |
| <a name="input_master_replicas"></a> [master\_replicas](#input\_master\_replicas) | Number of master pod replicas that are always up and available | `number` | `1` | no |
| <a name="input_master_resources_limits_cpu"></a> [master\_resources\_limits\_cpu](#input\_master\_resources\_limits\_cpu) | Describes the maximum amount of CPU resources allowed to the master jmeter container. | `string` | `"1"` | no |
| <a name="input_master_resources_limits_memory"></a> [master\_resources\_limits\_memory](#input\_master\_resources\_limits\_memory) | Describes the maximum amount of memory resources allowed to the master jmeter container. | `string` | `"1024Mi"` | no |
| <a name="input_master_resources_requests_cpu"></a> [master\_resources\_requests\_cpu](#input\_master\_resources\_requests\_cpu) | Describes the minimum amount of CPU requests required to the master jmeter container. | `string` | `"100m"` | no |
| <a name="input_master_resources_requests_memory"></a> [master\_resources\_requests\_memory](#input\_master\_resources\_requests\_memory) | Describes the minimum amount of memory requests required to the master jmeter container. | `string` | `"512Mi"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Name of the namespace in which to deploy the module. | `string` | `"default"` | no |
| <a name="input_pvc_access_modes"></a> [pvc\_access\_modes](#input\_pvc\_access\_modes) | A set of the desired access modes the volume should have. | `list` | <pre>[<br>  "ReadWriteOnce"<br>]</pre> | no |
| <a name="input_pvc_annotations"></a> [pvc\_annotations](#input\_pvc\_annotations) | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| <a name="input_pvc_labels"></a> [pvc\_labels](#input\_pvc\_labels) | Map of labels that will be applied on the persistent volume claim. | `map` | `{}` | no |
| <a name="input_pvc_name"></a> [pvc\_name](#input\_pvc\_name) | Name of the persistent volume claim that is created. | `string` | `"jmeter"` | no |
| <a name="input_pvc_resources_requests_storage"></a> [pvc\_resources\_requests\_storage](#input\_pvc\_resources\_requests\_storage) | Minimum amount of storage that will be applied to persistent volume claim. | `string` | `"5Gi"` | no |
| <a name="input_pvc_storage_class_name"></a> [pvc\_storage\_class\_name](#input\_pvc\_storage\_class\_name) | Name of the storage class that will be applied to persistent volume claim. | `string` | `null` | no |
| <a name="input_pvc_volume_name"></a> [pvc\_volume\_name](#input\_pvc\_volume\_name) | Name of the volume bound to the persistent volume claim. | `string` | `""` | no |
| <a name="input_pvc_wait_until_bound"></a> [pvc\_wait\_until\_bound](#input\_pvc\_wait\_until\_bound) | Whether to wait for the claim to reach Bound state (to find volume in which to claim the space) | `bool` | `false` | no |
| <a name="input_service_annotations"></a> [service\_annotations](#input\_service\_annotations) | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| <a name="input_service_labels"></a> [service\_labels](#input\_service\_labels) | Map of labels that will be applied on the service. | `map` | `{}` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of the service that is created. | `string` | `"jmeter-slaves"` | no |
| <a name="input_slave_deployment_annotations"></a> [slave\_deployment\_annotations](#input\_slave\_deployment\_annotations) | Map of annotations that will be applied on the annotation. | `map` | `{}` | no |
| <a name="input_slave_deployment_labels"></a> [slave\_deployment\_labels](#input\_slave\_deployment\_labels) | Map of labels that will be applied on the slave's deployment. | `map` | `{}` | no |
| <a name="input_slave_deployment_name"></a> [slave\_deployment\_name](#input\_slave\_deployment\_name) | Name of the slave's deployment that is created. | `string` | `"jmeter-slave"` | no |
| <a name="input_slave_deployment_template_annotations"></a> [slave\_deployment\_template\_annotations](#input\_slave\_deployment\_template\_annotations) | Map of annotations that will be applied on the slave's deployment template. | `map` | `{}` | no |
| <a name="input_slave_deployment_template_labels"></a> [slave\_deployment\_template\_labels](#input\_slave\_deployment\_template\_labels) | Map of labels that will be applied on the slave's deployment template. | `map` | `{}` | no |
| <a name="input_slave_envs"></a> [slave\_envs](#input\_slave\_envs) | Map of string representing environment variables defined in the jmeter slave container. | `map(string)` | `{}` | no |
| <a name="input_slave_replicas"></a> [slave\_replicas](#input\_slave\_replicas) | Number of slave pod replicas that are always up and available | `number` | `3` | no |
| <a name="input_slave_resources_limits_cpu"></a> [slave\_resources\_limits\_cpu](#input\_slave\_resources\_limits\_cpu) | Describes the maximum amount of CPU resources allowed to the slave jmeter container. | `string` | `"1"` | no |
| <a name="input_slave_resources_limits_memory"></a> [slave\_resources\_limits\_memory](#input\_slave\_resources\_limits\_memory) | Describes the maximum amount of memory resources allowed to the slave jmeter container. | `string` | `"1024Mi"` | no |
| <a name="input_slave_resources_requests_cpu"></a> [slave\_resources\_requests\_cpu](#input\_slave\_resources\_requests\_cpu) | Describes the minimum amount of CPU requests required to the slave jmeter container. | `string` | `"100m"` | no |
| <a name="input_slave_resources_requests_memory"></a> [slave\_resources\_requests\_memory](#input\_slave\_resources\_requests\_memory) | Describes the minimum amount of memory requests required to the slave jmeter container. | `string` | `"512Mi"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployment_master"></a> [deployment\_master](#output\_deployment\_master) | n/a |
| <a name="output_deployment_slave"></a> [deployment\_slave](#output\_deployment\_slave) | n/a |
| <a name="output_persistent_volume_claim"></a> [persistent\_volume\_claim](#output\_persistent\_volume\_claim) | n/a |
| <a name="output_service"></a> [service](#output\_service) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
