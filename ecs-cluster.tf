# create ecs cluster
resource "aws_ecs_cluster" "aws-ecs" {
  name = var.app_name
}

# create security group and segurity rules for the ecs cluster
resource "aws_security_group" "ecs-cluster-host" {
  name        = "${var.app_name}-ecs-cluster-host"
  description = "${var.app_name}-ecs-cluster-host"
  vpc_id      = aws_vpc.aws-vpc.id
  tags = {
    Name        = "${var.app_name}-ecs-cluster-host"
    Environment = var.app_environment
    Role        = "ecs-cluster"
  }
}

resource "aws_security_group_rule" "ecs-cluster-host-ssh" {
  security_group_id = aws_security_group.ecs-cluster-host.id
  description       = "admin SSH access to ecs cluster"
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = var.admin_sources_cidr
}

resource "aws_security_group_rule" "ecs-cluster-egress" {
  security_group_id = aws_security_group.ecs-cluster-host.id
  description       = "ecs cluster egress"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

