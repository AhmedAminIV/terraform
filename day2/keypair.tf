resource "tls_private_key" "rsa-key" {
  algorithm   = "RSA"
  rsa_bits = "4096"
}

resource "aws_key_pair" "tf-key-pair2" {
  key_name   = "tf-key-pair2"
  public_key = tls_private_key.rsa-key.public_key_openssh  
  lifecycle {
    ignore_changes = [public_key]
  }
}


resource "local_file" "tf-key" {
  content   = tls_private_key.rsa-key.private_key_pem
  filename = "tf-key-pair.pem" 
}