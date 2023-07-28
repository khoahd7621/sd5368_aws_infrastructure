// Create EC2 Instance
resource "aws_instance" "PracticalDevOpsSD5368_ec2_wordpress" {
  ami                     = "ami-0f34c5ae932e6f0e4"
  instance_type           = "t2.micro"
  key_name                = aws_key_pair.generated_key.key_name
  vpc_security_group_ids  = ["${aws_security_group.PracticalDevOpsSD5368_security_group.id}"]
  subnet_id               = aws_subnet.PracticalDevOpsSD5368_public_subnet.id

  tags = {
    Name = "Practical DevOps SD5368 EC2 Instance - Wordpress"
  }
}
