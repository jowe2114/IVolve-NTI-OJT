output "vpc_id" {
  value = aws_vpc.lab25.id
}

output "lab25_subnet_id" {
  value = aws_subnet.lab25.id
}

output "lab25p_subnet_ids" {
  value = [for s in aws_subnet.lab25p : s.id]
}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}