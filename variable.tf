variable "aws_region" {
type = string
default = "us-east-1"
}


variable "project" {
type = string
default = "myproject"
}



variable "env" {
  description = "Environment name (dev, stage, production)"
  type        = string
 
}


variable "ami" {
    description = "ami of the instance"
    type = string

}

variable "instance_type" {
    description = "ec2 instanc type"
    type = string
  
}

variable "key_name" {
        description = " aws key name"
        type = string

}

variable "public_key" {
    description = "path of public key"
    type = string
  
}

variable "tags" {
    description = "name of the project"
    type = map(string)
  
}