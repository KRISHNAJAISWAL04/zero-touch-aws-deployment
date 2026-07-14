output "Public_Ip" {
  value = aws_instance.project05.public_ip
}
output "Private_Ip" {
  value = aws_instance.project05.private_ip
}
output "public_dns" {
  value = aws_instance.project05.public_dns
}