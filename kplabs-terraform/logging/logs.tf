resource "local_file" "log" {
  content  = "log!"
  filename = "${path.module}/logs.txt"

}