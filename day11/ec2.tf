resource "aws_instance" "bastion" {
  ami                         = "ami-03a6eaae9938c858c"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub1.id
  vpc_security_group_ids      = [aws_security_group.ssh_sg.id]
  associate_public_ip_address = true
  key_name               = aws_key_pair.tf-key-pair.id
  user_data= <<-EOF
             #!/bin/bash
             echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/tf-key-pair.pem
             
             chmod 400 tf-key-pair.pem
            EOF

  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "application" {
  ami                         = "ami-03a6eaae9938c858c"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.prv1.id
  vpc_security_group_ids      = [aws_security_group.ssh_and_port3000.id]
  associate_public_ip_address = false
  key_name               = aws_key_pair.tf-key-pair.id
  tags = {
    Name = "application"
  }
}
