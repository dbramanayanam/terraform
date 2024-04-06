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
  #type  = list 
  default = ["cart","catalogue","user","shipping","payment","dispatch","mongodb","redis","mysql","rabbitmq","web"]
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
