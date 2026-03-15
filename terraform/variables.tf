# # Create a VPC
# variable "aws_vpc" {
#   description = "The VPC configuration"
#   type = object({
#     cidr_block = string
#   })
#   default = {
#     cidr_block = "10.0.0.0/16"
#   }
# }