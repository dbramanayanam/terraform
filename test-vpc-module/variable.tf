variable "vpc_cidr_block" {
  #type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = "true"
}

variable "common_tags" {
  #type        = map
  default     = {
     project = "roboshop"
     environment = "dev"
     terraform = "yes"

  }
}

variable "vpc_tags" {
  default     = {}
  
}

# variable "igw_tags" {

#   default     = {}

# }
variable "project" {
  type        = string
  default     = "roboshop"
}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "public_cidr" {
  #type        = "list"
  default     =["10.0.1.0/24", "10.0.2.0/24"]
  
}
