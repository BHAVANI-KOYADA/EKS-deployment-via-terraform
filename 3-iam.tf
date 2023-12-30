data "aws_iam_role" "existing_cluster_role" {
  name = var.iam_cluster_role
}


data "aws_iam_role" "existing_node_role" {
  name = var.iam_node_role
}



