output "vpc_id" {
  value = "${aws_vpc.cluster_vpc.id}"
}

output "pb_sb_1a" {
  value = "${aws_subnet.pb_sb_region_1a.*.id}"
}

output "pb_sb_1b" {
  value = "${aws_subnet.pb_sb_region_1b.*.id}"
}

output "app_sg_id" {
  value = "${aws_security_group.app_sg.id}"
}

output "alb_sg_id" {
  value = "${aws_security_group.alb_sg.id}"
}

output "ecs_sg_id" {
  value = "${aws_security_group.ecs_sg.id}"
}
