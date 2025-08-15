resource "aws_iam_user" "user" {
  name = "Dianna"
}

resource "aws_iam_group" "group" {
  name = "sre"
}

resource "aws_iam_group_membership" "membership" {
  name = "adding_user"
  group = aws_iam_group.group.name
  users = [aws_iam_user.user.name]
}

