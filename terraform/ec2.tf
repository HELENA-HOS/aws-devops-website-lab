resource "aws_instance" "website_server" {
  ami                    = var.ec2_ami_id #Amazon Linux 2023 AMI
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.website_sg.id]
  iam_instance_profile   = var.iam_instance_profile

  tags = merge(
    local.common_tags,
    {
      Name = local.resource_names.ec2
    }
  )
}

## Security Group
resource "aws_security_group" "website_sg" {
  name   = local.resource_names.sg
  vpc_id = var.vpc_id
  tags = merge(
    local.common_tags,
    {
      Name = local.resource_names.sg
    }
  )
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = var.allowed_ssh_cidr
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = var.public_cidr
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = var.public_cidr
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.website_sg.id

  cidr_ipv4   = var.public_cidr
  ip_protocol = -1
}