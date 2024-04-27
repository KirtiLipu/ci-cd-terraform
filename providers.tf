

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }
}


terraform {
  cloud {
    organization = "kirtilipu"
    workspaces {
      name = "ci-cd-terraform"
    }
  }
}