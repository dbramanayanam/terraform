variable "ami_id" {
  type        = string
  default     = "ami-0f3c7d07486cad139"
  description = "Devops-practice image id"
}

variable "instance_type" {
  #type        = list
  default     = "t2.micro"
  description = "instace type"
}

variable "tags" {
  type  = map 
  default = {
    "cart" = "t2.micro"
    "catalogue" = "t2.micro"
    "user" = "t2.micro"
    "shipping" = "t3.small"
    "payment" = "t2.micro"
    "dispatch" = "t2.micro"
    "mongodb" = "t3.small"
    "redis" = "t2.micro"
    "mysql" = "t3.small"
    "rabbitmq" = "t2.micro"
    "web" = "t2.micro"
  }
  #default = "roboshop"
}

variable "sg-inbound-from" {
   #type = number 
   default = 0
}

variable "sg-inbound-to" {
   #type = number 
   default = 65535

}

variable "zone_id" {
  #type        = string
  default     = "Z051889327O7Z1ITOEICM"
  description = "zone-ID"
}
