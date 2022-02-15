# terraform_vault_github_auth
quick terraform job to configure github JWT Auth


## Pre requirements
to use this terraform code you will need access to github(the free,github.com version is fine) and Vault (the OSS version is fine but I used HCP Vault).

### terraform provider
this code needs that the Vault and JWT provider access be set as enviroment variables:
```bash
export GITHUB_TOKEN=<GITHUB_TOKEN>
export VAULT_TOKEN=<VAULT_TOKEN>
export VAULT_ADDR=https://<VAULT_ADDRESS>:8200

```
### terraform variables
this project has one manatory variable *github_repository* which is the name of the project you want to enable the JWT Auth Method for.
this can be set by creating a terraform.tfvars file:

```text
github_repository = "GuyBarros/terraform-com-showcase-pipeline"
```

## running the code

```bash
terraform init
terraform plan
terraform apply
```


## Entities & JWT Auth

depending on how the user_claim is configured, it is also possible to use the bound_claim to specify the match paramaters that allow authentication.






## Notice
this currently is for reference , PRs welcomed.