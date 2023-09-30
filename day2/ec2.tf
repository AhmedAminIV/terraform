resource "aws_instance" "bastion" {
  ami                         = var.ami
  instance_type               = var.type
  subnet_id                   = module.mynetwork.public_subnet[0].id
  vpc_security_group_ids      = [aws_security_group.ssh_sg.id]
  associate_public_ip_address = true
  key_name               = aws_key_pair.tf-key-pair2.id

  provisioner "local-exec" {
    command= "echo ${self.public_ip} > inventory"

  }

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
  ami                         = var.ami
  instance_type               = var.type
  subnet_id                   = module.mynetwork.private_subnet[0].id
  vpc_security_group_ids      = [aws_security_group.ssh_and_port3000.id]
  associate_public_ip_address = false
  key_name               = aws_key_pair.tf-key-pair2.id
  tags = {
    Name = "application"
  }
}
