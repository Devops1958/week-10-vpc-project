terraform {
    backend "s3" {
    bucket         = "my-stephe-bucket"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
<<<<<<< HEAD
#    dynamodb_table = "terraform_state_lock"
=======
    #dynamodb_table = "terraform_State_lock"
>>>>>>> fd643dc5deafd3fc16e2bce7adbb171b21f880cd
  }
 }
