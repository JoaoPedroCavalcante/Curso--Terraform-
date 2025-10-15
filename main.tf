terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}
provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = "devops-key"

 # user_data = <<EOF
#!/bin/bash
#cd /home/ubuntu
#echo "<h1>Hello, World</h1>" > index.html
#nohup busybox httpd -f -p 8080 > web.log 2>&1 &
#EOF

  tags = {
    Name = "Terraform Ansible Python"
  }
}

