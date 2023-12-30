resource "aws_eks_cluster" "eks_cluster_terraform" {
  name     = "eks_cluster_terraform"
  role_arn = data.aws_iam_role.existing_cluster_role.arn

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    subnet_ids              = [data.aws_subnet.existing-subnet-1.id, data.aws_subnet.existing-subnet-2.id]
  }

    tags = {
    Project = var.project 
  }
}

