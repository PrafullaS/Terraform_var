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
