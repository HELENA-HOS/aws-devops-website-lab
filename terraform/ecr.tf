resource "aws_ecr_repository" "ecr_website" {
  name                 = local.resource_names.ecr
  image_tag_mutability = "MUTABLE"
  tags = merge(
    local.common_tags,
    {
      Name = local.resource_names.ecr
    }
  )
}