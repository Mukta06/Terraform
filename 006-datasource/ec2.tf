resource "aws_instance" "Web"{
    ami="data.aws_ami.ami.id"
    instance_type="t2.micro"
    tags={
        Name="tf-datasource-instance"
    }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}

output "private_ip_address" {
    value="IP Address of the created instance is : ${aws_instance.Web.private_ip}"
  
}