variable cidr {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
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

variable full_cidr {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "cidr wild card"
}
