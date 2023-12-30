variable "vpc_id" {
  type    = string
  default = "vpc-01e201c25ebb5ea5c"
}
variable "application_name" {
  type    = string
  default = "3_tier_application"
}
variable "subnet_id_1" {
  type    = string
  default = "subnet-0f970040f3bc14ccf"
}
variable "subnet_id_2" {
  type    = string
  default = "subnet-014af580176f14aa2"
}
variable "iam_cluster_role" {
  type    = string
  default = "eksClusterRole"
}
variable "iam_node_role" {
  type    = string
  default = "ec2-base-role"
}
variable "project" {
  type    = string
  default = "EKS-via-terraform"
}