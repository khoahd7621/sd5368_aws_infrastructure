module "ecr_tags" {
  source = "../tags"

  name        = var.name
  project     = var.project
  environment = var.environment
  owner       = var.owner

  tags = {
    Description = "Managed by terraform",
  }
}

resource "aws_ecr_repository" "PracticalDevOpsSD5368_ecr_repo" {
  name                 = "practical_devops_sd5368_ecr_repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = var.enable_scan_on_push
  }

  tags = module.ecr_tags.tags
}