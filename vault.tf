
resource "vault_jwt_auth_backend" "github" {
description = "oidc auth backend for github actions"
 path                = var.vault_auth_mount_path
oidc_discovery_url="https://token.actions.githubusercontent.com"
bound_issuer="https://token.actions.githubusercontent.com"
default_role="demo"
tune {
    listing_visibility = "unauth"
    default_lease_ttl  = var.github_default_lease_ttl
    max_lease_ttl      = var.github_max_lease_ttl
    token_type         = var.github_token_type
  }
}

resource "vault_jwt_auth_backend_role" "demo"{
    backend = vault_jwt_auth_backend.github.path
    role_type = "jwt"
    role_name = "demo"
    token_policies = ["default", "hcp-root"]
    bound_claims = {
         "sub" = "repo:${data.github_repository.vault_actions.full_name}:ref:refs/*"
    }
    bound_subject = ""
    bound_audiences = ["https://github.com/${data.github_user.current.login}"]
    user_claim = "workflow"

}