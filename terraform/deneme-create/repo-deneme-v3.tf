module "yeni_demo_test_v3" {
  source = "./modules/repository"


  name        = "test-repo-v5"
  description = "baska değerler değişsin"
  homepage_url           = "https://deneme.com"
  has_issues             = true
  has_wiki               = false
  has_projects           = true

}