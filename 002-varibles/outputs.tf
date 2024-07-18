# Printing variable values

variable "city" {}
output "Fav_City_Name"{
    value = var.city
}

output "Fav_City_Names"{
    value = "The city where I stay is : ${var.city}"
}


output "batch_op" {
    value= var.Batch
}