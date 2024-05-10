terraform {
    backend "s3" {
    bucket         = "my-stephe-bucket"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
#    dynamodb_table = "terraform_state_lock"
  }
 }