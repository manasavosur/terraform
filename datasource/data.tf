data "aws_ami" "devops" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


#this instance id taken from a instance which is created using ec2 folder and used to read data from there and give output
data "aws_instance" "terraform_instance" {    
    instance_id = "i-0e3835bc1b41aaa38"
}