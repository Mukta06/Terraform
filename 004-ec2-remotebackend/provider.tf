provider "aws" {}

#Declaring Backend

terraform{
        backend "s3"{
            bucket="b57-mukta-tf-state-bucket"
            key="dev/ec2/terraform.tfstate"
            region="us-east-1"
        }

    }
