module "repository_test" {
  source = "/Users/seymanurusta/projects/terraform-modules/github/modules/repository"


  name                   = var.name
  description            = var.description
  homepage_url           = var.homepage_url
  private                = var.private
  has_issues             = var.has_issues
  has_wiki               = var.has_wiki
  is_template            = var.is_template
  gitignore_template     = var.gitignore_template
  #template               = var.template
  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  allow_squash_merge     = var.allow_squash_merge
  auto_init              = var.auto_init
  topics                 = var.topics
  archived               = var.archived
  
  push_teams    = var.push_teams
  pull_team_ids          = var.pull_team_ids
  admin_team_ids = var.admin_team_ids
  branch_protections_v4  = var.branch_protections_v4
  delete_branch_on_merge = var.delete_branch_on_merge
  archive_on_destroy     = var.archive_on_destroy
  allow_auto_merge       = var.allow_auto_merge
  allow_update_branch    = var.allow_update_branch
  visibility             = var.visibility
  vulnerability_alerts   = var.vulnerability_alerts
  has_projects           = var.has_projects
  has_downloads          = var.has_downloads
  issue_labels_create    = var.issue_labels_create
  admin_collaborators    = var.admin_collaborators
  #autolink_references    = local.autolink_references
}