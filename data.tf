data "aws_availability_zones" "available" {
  state = "available"
}

output "azs"{
    value = data.aws_availability_zones.available.names
}