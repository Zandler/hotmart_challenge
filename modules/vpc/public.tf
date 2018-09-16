# Create public subnet on region 1a
resource "aws_subnet" "pb_sb_region_1a" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "pb_sb_cls_1"
  }
}
# Create public subnet on region 1b
resource "aws_subnet" "pb_sb_region_1b" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "pb_sb_cls_2"
  }
}
# Associate pb_sb in Route Table for region 1a
resource "aws_route_table_association" "pb_sb_region_1a_association" {
  subnet_id      = "${aws_subnet.pb_sb_region_1a.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}
# Associate pb_sb in Route Table for region 1b
resource "aws_route_table_association" "pb_sb_region_1b_association" {
  subnet_id      = "${aws_subnet.pb_sb_region_1b.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}
