/*variable "my-list" {
    type = list
}
*/

variable "my-set" {
    type = set(string)
  
}
output "myset" {
    value = var.my-set
  
}