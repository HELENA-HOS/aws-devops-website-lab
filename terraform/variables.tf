
variable "aws_region" {
  description = "Região da AWS onde os recursos serão provisionados."
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "ID da AMI do EC2 a ser utilizada."
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2 a ser utilizada."
  type        = string
}

variable "key_pair_name" {
  description = "Nome do par de chaves a ser utilizado para acessar a instância EC2."
  type        = string
}

variable "iam_instance_profile" {
  description = "Nome do perfil de instância IAM a ser utilizado."
  type        = string
}


variable "project_name" {
  description = "Nome do projeto a ser criado."
  type        = string
  default     = "website"
}

variable "vpc_id" {
  description = "ID do VPC onde a instância EC2 será criada."
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block permitido para acesso SSH."
  type        = string
}

variable "repository_url" {
  type = string
}


variable "public_cidr" {
  type    = string
  default = "0.0.0.0/0"

}

variable "environment" {
  type    = string
  default = "dev"
}