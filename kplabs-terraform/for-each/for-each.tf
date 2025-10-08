/*variable "user_names" {
    type = set(string)
    default = [ "kris","kros","shawn" ]
  
}

resource "aws_iam_user" "this" {
    for_each = var.user_names
    name = each.value
  
}

*/
variable "my-map" {
    default = {
        key = "value"
        key1 = "value1"
    }
  
} 

resource "aws_instance" "test" {
    for_each = var.my-map
    ami = each.value
    instance_type = "t2.micro"
    #ami = "ami-0cfde0ea8edd312d4"

  tags = {
    Name =each.key
  }
}
