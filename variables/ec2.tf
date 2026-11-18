resource "ami_id" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "instance_type"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
  }
}

resource "sg_names" {
  name        = "allow-all-terraform-change" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = sg_from_port
    to_port          = sg_to_port
    protocol         = "-1"
    cidr_blocks      = c
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = sg_from_port
    to_port          = sg_to_port
    protocol         = "-1"
    cidr_blocks      = cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}