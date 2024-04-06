output "ami_id" {
  value       =  data.aws_ami.devops-practice.id
  #sensitive   = true
  description = "devops-practice ami"
}
