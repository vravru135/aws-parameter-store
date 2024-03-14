terraform {
  backend "s3"
    bucket = "vravru135-terraform-state"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}
variable "parameters" {}
  default = [
  { name = "test", value = "String", value = "test" },
  { name = "test1", value = "String", value = "test1" }
 ]
}

resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}