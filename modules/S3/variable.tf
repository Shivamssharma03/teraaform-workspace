variable "bucket_name" {
  description = "name of the bucket"
  type = string
}

variable "tags" { 
    type = map(string) 
}


variable "project" {
    description = "name of the project"
    type = string
  
}
variable "env" {
    description = "enviroment name (dev ,stage, prod)"
    type = string
  
}
