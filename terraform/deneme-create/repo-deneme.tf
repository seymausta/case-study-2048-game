module "yeni_demo_test" {
  source = "./modules/repository"


  name        = "test-repo-v3"
  description = "Terraform ile repo oluşturma testi"
  topics      = ["kubernetes", "game", "2048"]
  visibility  = "public"

}