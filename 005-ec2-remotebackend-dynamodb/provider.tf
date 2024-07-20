provider "aws" {}
  
#Declaring the remote backend as s3

terraform {
  backend "s3" {
    bucket = "b57-mukta-tf-state-bucket"
    key = "dev/dynamodb/terraform.tfstate"
    region="us-east-1"
    dynamodb_table = "terraform-locking"
    
  }
}