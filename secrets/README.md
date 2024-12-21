# Secrets

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_password"></a> [password](#input\_password) | password of the user | `string` | n/a | yes |
| <a name="input_usernme"></a> [usernme](#input\_usernme) | username of the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_password"></a> [password](#output\_password) | password of user |
| <a name="output_username"></a> [username](#output\_username) | username of user |


## Using pass and PGP to manage secrets
- [Pass](https://www.passwordstore.org/)
- `brew install pass`
- `gpg --gen-key`
    - That created a key pair. Copy the id of they generated key.
- `pass init <key-id>`
    - ```
        mkdir: created directory '/home/sgune/.password-store/'
        Password store initialized for <KEY-ID>`
        ```
- `pass insert <secret-name>`
- `export TF_USERNAME=$(pass username)`
- `export TF_PASSWORD=$(pass password)`
- `terraform plan --var="username=$TF_USERNAME" --var="password=$TF_PASSWORD"`
