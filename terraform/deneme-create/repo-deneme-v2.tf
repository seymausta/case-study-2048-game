module "yeni_demo_test_v2" {
  source = "./modules/repository"


  name        = "test-repo-v4"
  description = "Böyle bir test"
  topics      = ["mock", "mock", "2048"]
  visibility  = "public"

}