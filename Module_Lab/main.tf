module "Payroll_US" {
  source         = "./Child_Module"
  region         = "us-east-1"
  ami_image_name = "ami-0035a5a4b40951ded"
  instance_type  = "t3.micro"
}

module "Payroll_UK" {
  source         = "./Child_Module"
  region         = "eu-west-2"
  ami_image_name = "ami-0abb41dc69b6b6704"
  instance_type  = "t3.micro"
}