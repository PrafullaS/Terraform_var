resource "aws_instance" "my_instance" {
  ami= var.ami_value
  instance_type = var.instance_type
  # subnet_id = var.aws_subnet_id
}
resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.environment == "production" ? [var.production_subnet_cidr] : [var.development_subnet_cidr]
  }
}
