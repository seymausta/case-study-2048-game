variable "namespace" {
  description = "Kubernetes namespace"
  type        = string
}

variable "host" {
  description = "Ingress host"
  type        = string
}

variable "github_token" {
  description = "GitHub token"
  type        = string
  sensitive   = true
}
variable "github_owner" {
  type = string
}

#---------------------create repo--------------------------

variable "name" {
  description = "Repository name"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
  default     = ""
}

variable "homepage_url" {
  description = "Repository homepage URL"
  type        = string
  default     = ""
}

variable "private" {
  description = "Repository private"
  type        = bool
  default     = false
}

variable "has_issues" {
  description = "Repository has issues"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Repository has wiki"
  type        = bool
  default     = false
}

variable "is_template" {
  description = "Repository is template"
  type        = bool
  default     = false
}

variable "gitignore_template" {  
  description = "Repository gitignore template"
  type        = string
  default     = ""
}

variable "template" {
  description = "Repository template"
  type = object({
    owner      = string
    repository = string
  })
  default = null
}

variable "allow_merge_commit" {
  description = "Repository allow merge commit"
  type        = bool
  default     = false
}

variable "allow_rebase_merge" {
  description = "Repository allow rebase merge"
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Repository allow squash merge"
  type        = bool
  default     = true
}

variable "auto_init" {
  description = "Repository auto init"
  type        = bool
  default     = true
}

variable "topics" {
  description = "Repository topics"
  type        = list(string)
  default     = []
}

variable "archived" {
  description = "Repository archived"
  type        = bool
  default     = false
}

variable "push_teams" {
  description = "Repository push teams"
  type        = list(string)
  default     = []
}

variable "pull_team_ids" {
  description = "Repository pull team IDs"
  type        = list(string)
  default     = []
}

variable "admin_team_ids" {
  description = "Repository admin team IDs"
  type        = list(string)
  default     = []
}

variable "branch_protections" {
  description = "Repository branch protections (v3)"
  type        = any
  default     = []
}

variable "branch_protections_v4" {
  description = "Repository branch protections (v4)"
  type        = list(any)
  default     = []
}

variable "delete_branch_on_merge" {
  description = "Repository delete branch on merge"
  type        = bool
  default     = true
}

variable "archive_on_destroy" {
  description = "Repository archive on destroy"
  type        = bool
  default     = true
}

variable "allow_auto_merge" {
  description = "Repository allow auto merge"
  type        = bool
  default     = false
}

variable "allow_update_branch" {
  description = "Repository allow update branch"
  type        = bool
  default     = true
}

variable "visibility" {
  description = "Repository visibility"
  type        = string
  default     = "private"
}

variable "vulnerability_alerts" {
  description = "Repository vulnerability alerts"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Repository has projects"
  type        = bool
  default     = true
}

variable "has_downloads" {
  description = "Repository has downloads"
  type        = bool
  default     = true
}

variable "issue_labels_create" {
  description = "Repository issue labels create"
  type        = bool
  default     = false
}

variable "admin_collaborators" {
  description = "Repository admin collaborators"
  type        = list(string)
  default     = []
}
