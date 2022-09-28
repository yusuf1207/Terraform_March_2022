terraform {
  backend "s3" {
    bucket = "terraform-2022-backend-do-not-delete"
    key    = "session-5/terraform.tfstate"
    region = "us-west-1"
  }
}

# Remote backend is a plugin. Plugin is a feature