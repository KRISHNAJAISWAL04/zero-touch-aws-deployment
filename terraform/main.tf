resource "aws_security_group" "my_security" {
  name        = "my-security"
  description = "default my security"
  vpc_id      = aws_default_vpc.default.id
  ingress {
    to_port     = 22
    from_port   = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "used for ssh"
  }
  ingress {
    to_port     = 80
    from_port   = 80
    protocol    = "tcp"
    description = "used for http"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    to_port     = 0
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "for outgoing traffic"


  }
}

resource "aws_default_vpc" "default" {

}

resource "aws_key_pair" "my_key" {
  key_name   = "project05-key"
  public_key = var.ssh_key
}
resource "aws_instance" "project05" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.my_key.key_name

  vpc_security_group_ids = [aws_security_group.my_security.id]
  tags = {
    Name = "project05"
  }

}
