resource "random_pet" "pet" {
        keepers = {
                val = timestamp()
        }
}

output "pet" {
        value = random_pet.pet.id
}


variable "test_str_var" {
        type = string
        default = "default_str_valueaaa"
}


output "output_str_var" {
  value = "${var.test_str_var}"
}
