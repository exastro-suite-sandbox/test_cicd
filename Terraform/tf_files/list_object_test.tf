variable "VAR_list" {
    type = list(object({ key-object_string = string }))
    default = [
     { "key-object_string" = "def-object-string"}
   ]
}
output "otp_var_list" {
    value = "${var.VAR_list}"
}
resource "random_pet" "pet" {
	keepers = {
		val = timestamp()
	}
}
output "pet" {
	value = random_pet.pet.id
}