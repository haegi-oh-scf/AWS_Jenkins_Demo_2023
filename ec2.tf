resource "aws_instance" "myFirstInstance" {
  ami                     = var.ami_id
  key_name                = var.key_name
  instance_type           = var.instance_type
  vpc_security_group_ids  = [aws_security_group.jenkins-sg-2022.id]
  tags                    = {
    Name                  = var.tag_name
  }
  root_block_device {
    volume_size           = "50"
    volume_type           = "gp2"
    delete_on_termination = true
    encrypted             = true
  }
}

# Create Elastic IP address
resource "aws_eip" "myFirstInstance" {
  vpc                     = true
  instance                = aws_instance.myFirstInstance.id
tags                      = {
    Name                  = "my_elastic_ip"
  }
}