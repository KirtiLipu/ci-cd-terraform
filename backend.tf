terraform {
  backend "s3" {
    bucket         = "terraform-backend-007"
    key            = "githubactions/terraform.tfstate"
    region         = "ap-south-1"
  }
}