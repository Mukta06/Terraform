# Provider --> 
provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "Application" {
    ami= "ami-072983368f2a6eab5"
    instance_type = "t2.micro"
    
    tags = {
      Name="tf-instance-dev"
    }
  
}

output "Private_IP" {
    value="Private-IP Address of the created instance is : ${aws_instance.Application.private_ip}"
  
}