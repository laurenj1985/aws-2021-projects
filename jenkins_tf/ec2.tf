data "template_file" "ec2_user_data" {
  template = file("/home/laurenj1914/installdockerboot.sh")
}

resource "aws_instance" "Jenkinsec2" {
  ami           = var.ami #in us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = data.template_file.ec2_user_data.template


  tags = {
    Name = "Jenkinsec2"
  }
}

#  template = file("${path.module}/installdockerboot.sh")