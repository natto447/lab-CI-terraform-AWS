resource "aws_instance" "web" {
  ami                   = "ami-068c0051b15cdb816"
  instance_type          = "t3.micro"
    key_name      = "tarefa-30-dias"

  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.vote_service_sg.security_group_id]

  associate_public_ip_address = true  


  tags = {
    Name = "instance-ec2-lab"
  }
}
