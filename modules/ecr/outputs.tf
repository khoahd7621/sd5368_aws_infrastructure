output "backend_repo_url" {
  value = aws_ecr_repository.PracticalDevOpsSD5368_ECR_Repo_Backend.repository_url
}

output "frontend_repo_url" {
  value = aws_ecr_repository.PracticalDevOpsSD5368_ECR_Repo_Frontend.repository_url
}