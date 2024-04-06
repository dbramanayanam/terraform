variable "ami_id" {
  type        = string
  default     = "ami-0f3c7d07486cad139"
  description = "Devops-practice image id"
}

variable "instance_type" {
  type        = string
  default     = "MongoDB"
  description = "instace type"
}

variable "tags" {
  #type  = map
  default = {
    Name = "Hello Terraform"
    Environment = "Prod"
    Project = "Roboshop"
    Instance = "Web"
  }
}

variable "sg-inbound-from" {
   #type = number 
   default = 0
}

variable "sg-inbound-to" {
   #type = number 
   default = 65535

}