resource "aws_eip" "lb" {
  #instance = aws_instance.web.id
  domain   = "vpc"
}

output "eip_addr" {
    value = aws_eip.lb.public_ip
}