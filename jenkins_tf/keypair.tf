resource "aws_key_pair" "laurenskey" {
  key_name   = var.key_name
  public_key = var.pub_key
}