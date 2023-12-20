resource "aws_iam_user" "u1" {
  name = "Akylbek"
}
resource "aws_iam_user" "u2" {
  name = "Kaizen"
}
resource "aws_iam_user" "u3" {
  name = "Hello"
}
resource "aws_iam_user" "u4" {
  name = "World"
}

resource "aws_iam_group" "devops" {
  name = "DevOps"
}
resource "aws_iam_group" "qa" {
  name = "QA"
}

resource "aws_iam_group_membership" "devops_team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.u1.name,
    aws_iam_user.u2.name,
  ]

  group = aws_iam_group.devops.name
}

resource "aws_iam_group_membership" "qa_team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.u3.name,
    aws_iam_user.u4.name,
  ]

  group = aws_iam_group.qa.name
}

# import {
#   to = aws_iam_user.u5
#   id = "admin"
# }

resource "aws_iam_user" "u5" {
  name = "admin"
}

# output "u1-full" {
#   value = aws_iam_user.u1
# }

# output "u2-unique_id" {
#   value = aws_iam_user.u2.unique_id
# }