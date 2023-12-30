
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0759f51a90924c166"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }


}

variable "prefix" {
}

variable "location" {
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "path/to/my/terraform.tfstate"
    region = "us-west-2"
  }
}

