resource "aws_instance" "Web"{
    ami=data.aws_ami.ami.id
    instance_type="t2.micro"
    tags={
        Name="tf-datasource-instance"
    }
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
}
data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}

resource "aws_security_group" "allow_tls" {
  name   = "b57-allow_ssh"
  description = "Allow SSH inbound and outbound traffic"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags={
    Name="allow_ssh_sg"
  }
}





output "private_ip_address" {
    value="IP Address of the created instance is : ${aws_instance.Web.private_ip}"
  
}