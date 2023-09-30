variable cidr {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
}

variable region {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}


variable ami {
  type        = string
  default     = "ami-03a6eaae9938c858c"
  description = "ami for aws's ec2 instance"
}


variable type {
  type        = string
  default     = "t2.micro"
  description = "type of aws's ec2 instance"
}


variable public_subnets_cidr {
  type        = list(string)
  default     = ["10.0.1.0/24","10.0.3.0/24"]
  description = "public subents cidr block"
}

variable private_subnets_cidr {
  type        = list(string)
  default     = ["10.0.2.0/24","10.0.4.0/24"]
  description = "private subents cidr block"
}


variable subnets_az {
  type        = list(string)
  default     = ["us-east-1a","us-east-1b"]
  description = "availability zones for subents"
}

variable protcol {
  type        = string
  default     = "tcp"
  description = "protcol for security groups"
}

variable full_cidr {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "cidr wild card"
}

variable all_protcols {
  type        = string
  default     = "-1"
  description = "protcol wild card"
}
