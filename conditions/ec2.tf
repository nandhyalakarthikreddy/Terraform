resource "aws_instance" "example" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
    vpc_security_group_ids=[aws_security_group.allow-terraform.id]

    tags = {
        Name = "HelloWorld"
        terraform = "true"
   }
}


resource "aws_security_group" "allow-terraform" {
  name   = "sg"
  

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}