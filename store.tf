resource "aws_ssm_parameter" "vpc_id" {
    name = "${local.ssm_prefix}/vpc_id"
    type = "String"
    value = aws_vpc.main.id
}
