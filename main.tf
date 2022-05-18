# resource "aws_instance" "nodeWebServer" {
#   ami = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"

#   tags = {
#     "usage" = "nodeWebVm"
#   }
# }
