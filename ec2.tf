data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
 # subnet_id=aws_subnet.main.id

 # security_groups = [aws_security_group.allow_tls.id]
 # vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Shambhawi-on-cloud"
    env="Prod"
  }
  
}
