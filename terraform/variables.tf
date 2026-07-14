variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "aws_region" {
  default = "eu-north-1"
  type    = string
}
variable "ssh_key" {
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBQey2H1XFaD+knNEMzzrdOlIvhq6EFgsLcQBRDmRLEv krish@JARVIS"
  type    = string
}
variable "aws_ami" {
  default = "ami-0aba19e56f3eaec05"
  type    = string

}