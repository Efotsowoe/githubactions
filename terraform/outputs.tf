output "server-private-ip" {
  value = aws_instance.web.private_ip
}

output "vpc-id" {
  value = aws_vpc.main.id
}
