# my_variables.tfvars

# VPC CIDR block
cidr = "10.0.0.0/16"

# AWS region
region = "eu-central-1"

# AMI for AWS EC2 instance
ami = "ami-01342111f883d5e4e"

# Type of AWS EC2 instance
type = "t2.micro"

# CIDR blocks for public subnets
public_subnets_cidr = ["10.0.1.0/24", "10.0.3.0/24"]

# CIDR blocks for private subnets
private_subnets_cidr = ["10.0.2.0/24", "10.0.4.0/24"]

# Availability zones for subnets
subnets_az = ["eu-central-1a", "eu-central-1b"]

# Protocol for security groups
protocol = "tcp"

# CIDR wildcard
full_cidr = ["0.0.0.0/0"]

# Protocol wildcard
all_protcols = "-1"
