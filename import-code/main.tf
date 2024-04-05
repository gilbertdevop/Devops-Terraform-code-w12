

resource "aws_instance" "web" {
  ami                                  = "ami-0c101f26f147fa7fd"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "gilbert-ec2-key-pair"
  monitoring                           = false
  security_groups                      = ["launch-wizard-1"]
  subnet_id                            = "subnet-0b5ada5dcf4e1a6f1"
  tags = {
    Name = "webserver"
  }
}
  
