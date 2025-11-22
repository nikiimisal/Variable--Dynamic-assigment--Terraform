

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# PRIRORITY (Pricidance)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# ec2.tf

provider "aws" {
  region = "eu-north-1"
}
# dynamic assignment 
resource "aws_instance" "myweb" {
  ami = var.my_ami                       #use
  instance_type = var.my_instance        #use
  key_name = var.my_key                  #use
  vpc_security_group_ids = var.my_sg     #use
  tags = {                               # (optionan)
    Name = "myappserver"                 # hardcoding
  }
}




# variable.tf

# Declaraction/define  and assignment

/*variable "my_ami" {
  description = "Enter ami id"    # No assignment
}*/
variable "my_ami" {
  default = "ami-0a716d3f3b16d290c"
}
variable "my_instance" {
  default = "t3.micro"                 # assignment
}
variable "my_key" {
  default = "server1"
}
variable "my_sg" {
  default = ["sg-0b96d9defb7beaca0"]
}





# variable.tfvars

## Only assignment
  ami =  "ami-0a716d3f3b16d290c"                     
  instance_type = "t2.micro"        
  key_name = "server2"





# variable.auto.tfvars

### assignment
my_ami = "ami-0a716d3f3b16d290c"
my_instance = "t3.small"
my_key = "server3"




## In command run this  

terraform apply -var "my_instance=t2.small" --auto-approve 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
