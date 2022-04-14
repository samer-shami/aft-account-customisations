resource "random_string" "random" {
  length  = 16
  special = false
}

resource "aws_ssm_parameter" "random" {
  name  = "/testing/RANDOM_PARAM_DEMO_HELLO"
  type  = "String"
  value = random_string.random.result
}