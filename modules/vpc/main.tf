# Example VPC
resource "aws_vpc" "cluster_vpc" {
  cidr_block = "10.0.0.0/22" 
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "Cluster VPC"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.cluster_vpc.id}"
  tags {
        Name = "Gateway for Internet"
    }
}

# Route to Internet Gateway
resource "aws_route" "access_to_internet" {
  route_table_id         = "${aws_vpc.cluster_vpc.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.igw.id}"
}

# Elastic IP
resource "aws_eip" "eip" {
  vpc      = true
  depends_on = ["aws_internet_gateway.igw"]
}