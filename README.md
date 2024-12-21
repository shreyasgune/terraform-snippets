# can
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_os"></a> [os](#input\_os) | n/a | `string` | `"linux"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_os"></a> [os](#output\_os) | n/a |

# conditionals
## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.3 |

## Resources

| Name | Type |
|------|------|
| [null_resource.disabled_example](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.enabled_example](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_me"></a> [enable\_me](#input\_enable\_me) | do I enable myself | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_enabledORdisabled"></a> [enabledORdisabled](#output\_enabledORdisabled) | n/a |
| <a name="output_enabled_output"></a> [enabled\_output](#output\_enabled\_output) | n/a |

# loops

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.3 |

## Resources

| Name | Type |
|------|------|
| [null_resource.count_example](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.for_each_example](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.map_extract](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_names"></a> [names](#input\_names) | just names | `map(string)` | <pre>{<br/>  "anakin": "not a jedi master, but on the council",<br/>  "obiwan": "jedi master",<br/>  "quigon": "jedi master as well",<br/>  "shryeas": "main of the hour"<br/>}</pre> | no |
| <a name="input_subnet_cidr_block_map"></a> [subnet\_cidr\_block\_map](#input\_subnet\_cidr\_block\_map) | map of cidrs | `map(string)` | <pre>{<br/>  "subnet1": "10.0.0.1/19",<br/>  "subnet2": "10.0.0.2/19",<br/>  "subnet3": "10.0.0.3/19"<br/>}</pre> | no |
| <a name="input_subnet_cidr_blocks"></a> [subnet\_cidr\_blocks](#input\_subnet\_cidr\_blocks) | List of CIDR blocks for the subnets | `list(string)` | <pre>[<br/>  "10.0.0.0/19",<br/>  "10.0.032.0/19",<br/>  "10.0.64.0/19"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_count_output"></a> [count\_output](#output\_count\_output) | n/a |
| <a name="output_directives"></a> [directives](#output\_directives) | n/a |
| <a name="output_extracted"></a> [extracted](#output\_extracted) | n/a |
| <a name="output_for_each_output"></a> [for\_each\_output](#output\_for\_each\_output) | n/a |
| <a name="output_length"></a> [length](#output\_length) | n/a |
| <a name="output_map"></a> [map](#output\_map) | n/a |
| <a name="output_set"></a> [set](#output\_set) | n/a |
| <a name="output_using_for1"></a> [using\_for1](#output\_using\_for1) | n/a |
| <a name="output_using_for2"></a> [using\_for2](#output\_using\_for2) | n/a |

# try
## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.5 |

## Resources

| Name | Type |
|------|------|
| [http_http.json-body](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [http_http.primary-server](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_response-json-fakeKey"></a> [response-json-fakeKey](#output\_response-json-fakeKey) | n/a |
| <a name="output_response-json-fruit"></a> [response-json-fruit](#output\_response-json-fruit) | n/a |
