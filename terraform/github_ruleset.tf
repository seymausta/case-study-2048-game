/*
resource "github_repository_ruleset" "main_branch_protection" {

  name        = "main-branch-protection"
  repository  = "case-study-2048-game"
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["refs/heads/main"]
      exclude = []
    }
  }

  rules {

    pull_request {
      required_approving_review_count = 0
      dismiss_stale_reviews_on_push   = true
    }

    non_fast_forward        = true
    deletion                = true
    required_linear_history = true
  }
}
*/
