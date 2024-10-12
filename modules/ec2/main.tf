locals {
  instance_names = [for i in range(var.number_of_instances) : format("instance-%02d", i + 1)]  # Generate instance names
}
resource "aws_instance" "badal" {
    for_each = toset(local.instance_names)
    ami = var.ami
    instance_type = var.instance_type
  
}