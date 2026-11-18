variable "ami_id"{
  type = string
  default ="ami-0055977a6e828a4f4"
  description = "RHEL 9 IMAGE"
}

variable "instance_type"{
  type = string
  default = t3.micro
}

variable "ec2_tags"{
  type = map
  default = {
    Name = "variable-demo"
    Project = "roboshop"
    terraform = "true"
    Enviroment = "dev"
  }

}

variable "sg_names" {
  default = "allow-all-terraform-default"
  type = string  
}

variable "sg_discription"{
  default = "Allow TLS inbound traffic and all outbound traffic"
}


variable "sg_from_port"{
  type = number
  default = 0
}

variable "sg_to_port"{
  type = number
  default = 0
}

variable "cidr_blocks"{
type = list
default = ["0.0.0.0/0"]
}

variable "sg_tags"{
  type = map
  default = {
    Name = "allow-all-terraform"
    Project = "roboshop"
    terraform = "true"
    Enviroment = "dev"
  }  
}