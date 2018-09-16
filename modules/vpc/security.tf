# App Security Group
resource "aws_security_group" "app_sg" {
  name        = "${var.cls_ecs}-app-sg"
  description = "Allow all2all for vpc"
  vpc_id      = "${aws_vpc.cluster_vpc.id}"
  depends_on  = ["aws_vpc.cluster_vpc"]

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = "true"
  }

  tags {
    Environment = "${var.cls_ecs}"
  }
}

# Create security group for ALB
resource "aws_security_group" "alb_sg" {
  name        = "${var.cls_ecs}-alb-sg"
  description = "ALB SG"
  vpc_id      = "${aws_vpc.cluster_vpc.id}"

  ingress {
    from_port   = "${var.alb_port}"
    to_port     = "${var.container_port}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.cls_ecs}-alb-sg"
  }
}

# ECS Cluster Security Group
resource "aws_security_group" "ecs_sg" {
  vpc_id      = "${aws_vpc.cluster_vpc.id}"
  name        = "${var.cls_ecs}-ecs-service-sg"
  description = "outgoing from container"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.cls_ecs}-ecs-service-sg"
    Environment = "${var.cls_ecs}"
  }
}
