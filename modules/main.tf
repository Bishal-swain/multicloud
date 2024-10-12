# module "aws_s3_bucket" {
#     source = "./s3"
#     number_of_buckets  = var.number_of_buckets
  
# }
resource "aws_s3_bucket" "name" {
  bucket = "badal"
}



# module "aws_vpc" {
#     source = "./vpc"
#     cidr_block = var.cidr_block
  
# }
# module "aws_instance" {
#     source = "./ec2"
#     instance_type = var.instance_type
#     number_of_instances = var.number_of_instances
#     ami = var.ami
  
# }