terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "local" {}
provider "null" {}

# Use a local data source to read file content
data "local_file" "source_text" {
  filename = "${path.module}/data.txt"
}

# Call the module
module "writer" {
  source   = "./modules/file_writer"
  filename = var.output_file
  content  = data.local_file.source_text.content
}

# Use a provisioner (runs a local command)
resource "null_resource" "after_write" {
  provisioner "local-exec" {
    command = "echo 'File ${var.output_file} created successfully!'"
  }
}

# Output values
output "file_written" {
  value = module.writer.output_path
}

