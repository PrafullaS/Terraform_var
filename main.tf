resource "aws_instance" "my_instance" {
  ami= var.ami_value
  instance_type = var.instance_type
  subnet_id = var.aws_subnet_id
}