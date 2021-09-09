resource "aws_iam_role" "this" {
  name               = "NewRelicInfrastructure-Integration"
  description        = "Newrelic integration role"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy" "this" {
  role   = aws_iam_role.this.name
  policy = data.aws_iam_policy_document.this.json
}
