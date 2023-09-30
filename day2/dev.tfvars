# my_variables.tfvars

# VPC CIDR block
cidr = "172.0.0.0/16"

# AWS region
region = "us-east-1"

# AMI for AWS EC2 instance
ami = "ami-03a6eaae9938c858c"

# Type of AWS EC2 instance
type = "t2.micro"

# CIDR blocks for public subnets
public_subnets_cidr = ["172.0.1.0/24", "172.0.3.0/24"]

# CIDR blocks for private subnets
private_subnets_cidr = ["172.0.2.0/24", "172.0.4.0/24"]

# Availability zones for subnets
subnets_az = ["us-east-1a", "us-east-1b"]

# Protocol for security groups
protocol = "tcp"

# CIDR wildcard
full_cidr = ["0.0.0.0/0"]

# Protocol wildcard
all_protcols = "-1"
