variable "filename" {
  description = "The file to create"
  type        = string
}

variable "content" {
  description = "Content to write into the file"
  type        = string
}

resource "local_file" "writer" {
  content  = var.content
  filename = "${path.module}/${var.filename}"
}

output "output_path" {
  value = local_file.writer.filename
}

