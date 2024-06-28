#if there is no default value terrafm apply will prompt to enter values else we can use cli
# terraform apply -var "prefix=Mrs" -var "separator=." -var "filename=/root/file.txt" 
# or we can use env varible 
# export TF_VAR_filename="/root/file.txt"
#or we can use var definition file like terraform.tfvars | terraform.tfvars.json | *.auto.tfvars | *.auto.tfvars.json these are auto matically loaded
# terraform apply -var-file variable.tfvars
###Precedence first it will use file gin=ven through cmd line
# 2nd it will check *.auto.tfvars (alphabetical order)
# 3rd it will check variable_dev.tfvars
# last it will check env variable
variable "filename" {
  default     = "C:\\Users\\subra\\Desktop\\terraform\\Terraform tutorials\\file1.txt"
  type        = string
  description = "the path of the file"
}
variable "content" {
  type = map(any)
  default = {
    "statement1" = "We love pets!"
    "statement2" = "we dont love pets!"
  }
  description = "content of the file"

}
variable "prefix" {
  default = ["Mrs", "Mr", "Sir"]
  type    = list(any)
}
variable "separator" {
  default = "."
}
variable "length" {
  default     = "1"
  type        = number
  description = "Length of the pet name"
}

variable "password_change" {
  default = "true"
  type    = bool
}

#we can also give like this with type constaint
# variable "prefix" {
# default = ["Mr", "Mrs", "Sir"]
# type = list(string)
# }
# variable "prefix" {
# default = ["1", "2", "3"]
# type = list(number)
# }
# variable "prefix" {   
# default = ["Mr", "Mrs", "Sir"]
# type = list(number)  ## this is wrong
# }
variable "cats" {
  default = {
    "color" = "brown"
    "name"  = "bella"
  }
  type = map(string)
}

variable "pet_count" {
  default = {
    "dogs"     = "3"
    "cats"     = "1"
    "goldfish" = "2"
  }
  type = map(number)
}
# var of type object
variable "bella" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool
  })
  default = {
    name         = "bella"
    color        = "brown"
    age          = 21
    food         = ["fish", "chicken", "turkey"]
    favorite_pet = true
  }
}

# Tuples
variable "kitty" {
  type    = tuple([string, number, bool])
  default = ["cat", 7, false]

}