
output "ec2_public_ip" {
  description = "Endereço IP público da instância EC2."

  value = aws_instance.website_server.public_ip
}

output "ec2_instance_id" {
  description = "ID da instância EC2."

  value = aws_instance.website_server.id
}

output "ec2_public_dns" {
  description = "DNS público da instância EC2."

  value = aws_instance.website_server.public_dns
}

output "ecr_repository_url" {
  description = "URL do repositório Amazon ECR."

  value = aws_ecr_repository.ecr_website.repository_url
}

output "security_group_id" {
  description = "ID do Security Group criado para a instância EC2."

  value = aws_security_group.website_sg.id
}