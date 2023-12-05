provider "aws" {
  region = "us-east-1"
  access_key = "XYAKIA27I7RI4IR7VXP47I"
  secret_key = "ZiRqOSseOeEeOtn9jqSGOAt3yFV/6UDoduFp/Zt0W"
}

resource "aws_instance" "Mock-Service" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = {
    Name = "Mock Service Computer"
  }
}

#hi