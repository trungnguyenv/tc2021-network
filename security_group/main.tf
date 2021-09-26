resource "aws_security_group" "default" {
  vpc_id = var.main_vpc_id
  name = "${var.environment}-default"

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_security_group" "private_access" {
  vpc_id = var.main_vpc_id
  name   = "${var.environment}-private-access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "Deployer SSH"
    cidr_blocks = var.ssh_source_whitelist
  }
}

resource "aws_security_group" "www" {
  vpc_id = var.main_vpc_id
  name = "${var.environment}-www"

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    ipv6_cidr_blocks = ["::/0"]
  }
}
