output "my-public_ip_address" {
  value = aws_lightsail_instance.server1.public_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.server1.username
}
output "key_pair_name" {
  value = aws_lightsail_instance.server1.key_pair_name
}