output "endpoint" {
  value = aws_eks_cluster.eks_cluster_terraform.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eks_cluster_terraform.certificate_authority
}