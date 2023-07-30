// Create EC2 Instance
resource "aws_instance" "PracticalDevOpsSD5368_ec2" {
  ami                     = "ami-0f34c5ae932e6f0e4"
  instance_type           = "t2.micro"
  key_name                = aws_key_pair.generated_key.key_name
  vpc_security_group_ids  = ["${aws_security_group.PracticalDevOpsSD5368_security_group.id}"]
  subnet_id               = aws_subnet.PracticalDevOpsSD5368_public_subnet.id

  tags = {
    Name = "Practical DevOps SD5368 EC2 Instance"
  }
}

// Create ECR Repository
resource "aws_ecr_repository" "PracticalDevOpsSD5368_ecr_repo" {
  name                 = "practical_devops_sd5368_ecr_repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name  = "Practical DevOps SD5368 ECR Repo"
  }
}
