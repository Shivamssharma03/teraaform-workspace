project       = "calasco"
aws_region    = "us-east-1"
env           = "stage"
ami           = "ami-0360c520857e3138f"
instance_type = "t3.small"
key_name      = "shivam-stage-key"
public_key    = "~/.ssh/id_rsa.pub"
tags = {
  Owner = "Stage Team"
}
