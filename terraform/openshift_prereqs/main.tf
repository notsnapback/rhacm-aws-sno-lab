resource "aws_iam_user" "os_admin" {
  name = "openshift_admin"

  tags = {
    Terraform = "true"
  }
}

data "aws_iam_group" "admin" {
  group_name = "admin"
}

resource "aws_iam_user_group_membership" "admin_membership" {
  user = aws_iam_user.os_admin.name

  groups = [
    data.aws_iam_group.admin.group_name
  ]
}

resource "aws_iam_access_key" "os_admin" {
  user = aws_iam_user.os_admin.name
}