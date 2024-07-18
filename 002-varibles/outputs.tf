# Printing variable values
# Declare all the veriables in vars.tf file then terraform will recognize the file no need to explicitly mention
# If we have any other name of varibale file then we need to create empty varibale for that before printing --> file name should be terraform.tfvars
# If the veriable file name is different like dev.tfvars or prod.tfvars etc then the CLI is :
# terraform plan --var-file=dev.tfvars; terraform apply --var-file=dev.tfvars -auto-approve




variable "city" {}
output "Fav_City_Name"{
    value = var.city
}

output "Fav_City_Names"{
    value = "The city where I stay is : ${var.city}"
}

variable "state" {}
output "Fav_state"{
    value="I am from ${var.state}"
}

output "batch_op" {
    value= var.Batch
}