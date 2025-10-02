resource "aws_eip" "lb" {
  #instance = aws_instance.web.id
  domain   = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "attribute-sg"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.lb.public_ip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}