resource "aws_eks_node_group" "node_group_terraform" {
  cluster_name    = aws_eks_cluster.eks_cluster_terraform.name
  node_group_name = "node_group_terraform"
  node_role_arn   = data.aws_iam_role.existing_node_role.arn
  subnet_ids      = [data.aws_subnet.existing-subnet-1.id, data.aws_subnet.existing-subnet-2.id]
  capacity_type   = "ON_DEMAND"
  instance_types  = ["t3.small"]
  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
  labels = {
    role = "spot"
  }

  depends_on = [
    aws_eks_cluster.eks_cluster_terraform
  ]
  tags = {
    Project = var.project 
  }
}