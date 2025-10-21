resource "aws_instance" "example" {
    count=5
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids=[aws_security_group.allow-terraform.id]

    tags = {
        Name = var.instances[count.index]
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