# Printing variable values

variable "city" {}
output "Fav_City_Name"{
    value = var.city
}

output "Fav_City_Names"{
    value = "The city where I stay is : ${var.city}"
}

#variable "state" {}
output "Fav_state"{
    value="I am from ${var.state}"
}

output "batch_op" {
    value= var.Batch
}