resource "aws_instance" "App" {
    ami = "ami-072983368f2a6eab5"
    instance_type = t2.micro
    tags = {
      Name="tf-remote-backend-dev"
    }
  
}

output "Print-private_ip" {
    value="IP Address of the Instance Created is : ${aws_instance.App.private_ip}"
  
}