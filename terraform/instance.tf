resource "aws_instance" "main" {
  ami                         = "ami-035966e8adab4aaad" // Ubuntu 18.04
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.main.id
  vpc_security_group_ids      = [aws_security_group.main.id]
  associate_public_ip_address = true

  key_name = "dell-laptop"


  tags = {
    Name = "main"
  }
}
