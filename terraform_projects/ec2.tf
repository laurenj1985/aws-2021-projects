resource "aws_instance" "web" {
  ami           = "ami-083654bd07b5da81d"
  instance_type = "t2.micro"

  tags = {
    Name = "Laurentest"
  }
}