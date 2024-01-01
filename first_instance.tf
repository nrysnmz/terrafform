
provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0759f51a90924c166"
  instance_type = "t2.micro"
  count         = 3
}
