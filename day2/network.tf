module "mynetwork"{
    source= "../network"
    cidr=var.cidr
    public_subnets_cidr=var.public_subnets_cidr
    private_subnets_cidr=var.private_subnets_cidr
    subnets_az=var.subnets_az
}


