data "aws_subnet" "existing-subnet-1" {
  id = var.subnet_id_1
}

data "aws_subnet" "existing-subnet-2" {
  id = var.subnet_id_2
}
