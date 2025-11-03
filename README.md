### For creating workspace run cmm  
Terraform workspace create dev
Terraform workspace create stage
Terraform workspace create prod


###  For switching into workspaces run cmd
Terraform workspace select dev , stage , prod 


### for enjecting the envs in diffrent workspaces run cmds

** for dev workspace plan
=
terraform plan -var-file="envs/dev.tfvars"
**for dev workspace apply
terraform apply -var-file="envs/dev.tfvars"


** for stage workspace plan
=
terraform plan -var-file="envs/stage.tfvars"
**for stage workspace apply
terraform apply -var-file="envs/stage.tfvars"

** for prod workspace plan
=
terraform plan -var-file="envs/prod.tfvars"
**for prod workspace apply
terraform apply -var-file="envs/prod.tfvars"




