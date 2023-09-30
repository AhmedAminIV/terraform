resource "aws_security_group" "ssh_sg" {
  name        = "ssh-security-group"
  description = "Allow SSH from any IP address"
  vpc_id = aws_vpc.myday1-vpc.id

  // Ingress rule for SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from any IP
  }
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from any IP
  }
}

resource "aws_security_group" "ssh_and_port3000" {
  name        = "ssh-and-port3000-security-group"
  description = "Allow SSH and Port 3000 from VPC CIDR"
  vpc_id = aws_vpc.myday1-vpc.id

  // Ingress rule for SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.myday1-vpc.cidr_block]  # Allow SSH from VPC CIDR
  }

  // Ingress rule for Port 3000
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.myday1-vpc.cidr_block]  # Allow Port 3000 from VPC CIDR
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  
  }
}