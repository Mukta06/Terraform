provider "aws"{}

terraform {
  backend "s3" {
    bucket = "b57-mukta-tf-state-bucket"
    key="dev/datasource/terraform.tfstate"
    region="us-east-1"
    
  }
}