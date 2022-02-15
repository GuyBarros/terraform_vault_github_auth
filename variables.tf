variable "github_repository" {
     type        = string
     description = "Full name of the repository (in org/name format)."
}

variable "github_default_lease_ttl" {
  type        = string
  description = "Default lease TTL for Vault tokens"
  default     = "12h"
}

variable "github_max_lease_ttl" {
  type        = string
  description = "Maximum lease TTL for Vault tokens"
  default     = "768h"
}

variable "github_token_type" {
  type        = string
  description = "Token type for Vault tokens"
  default     = "default-service"
}

