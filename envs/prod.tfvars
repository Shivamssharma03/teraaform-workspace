project       = "calasco"
aws_region    = "us-east-1"
env           = "prod"
ami           = "ami-0360c520857e3138f"
instance_type = "t3.medium"
key_name      = "shivam-prod-key"
public_key    = "~/.ssh/id_rsa.pub"
tags = {
  Owner = "Prod Team"
}
