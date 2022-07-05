data "aws_iam_policy_document" "this" {
  statement {
    sid       = "sid1"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "apigateway:GET",
      "apigateway:HEAD",
      "apigateway:OPTIONS",
      "autoscaling:Describe*",
      "budgets:ViewBudget",
      "cloudfront:List*",
      "cloudtrail:DescribeTrails",
      "cloudtrail:GetTrailStatus",
      "cloudwatch:Describe*",
      "cloudwatch:Get*",
      "cloudwatch:List*",
      "codedeploy:List*",
      "codedeploy:BatchGet*",
      "directconnect:Describe*",
      "dynamodb:List*",
      "dynamodb:Describe*",
      "ec2:Describe*",
      "ec2:Get*",
      "ecs:Describe*",
      "ecs:List*",
      "elasticache:Describe*",
      "elasticache:List*",
      "elasticfilesystem:DescribeFileSystems",
      "elasticfilesystem:DescribeTags",
      "elasticloadbalancing:Describe*",
      "elasticmapreduce:List*",
      "elasticmapreduce:Describe*",
      "es:ListTags",
      "es:ListDomainNames",
      "es:DescribeElasticsearchDomains",
      "health:DescribeEvents",
      "health:DescribeEventDetails",
      "health:DescribeAffectedEntities",
      "iam:ListSAMLProviders",
      "iam:ListOpenIDConnectProviders",
      "iam:ListServerCertificates",
      "iam:GetAccountAuthorizationDetails",
      "iam:ListVirtualMFADevices",
      "iam:GetAccountSummary",
      "kinesis:List*",
      "kinesis:Describe*",
      "lambda:List*",
      "lambda:Get*",
      "logs:Get*",
      "logs:Describe*",
      "logs:FilterLogEvents",
      "logs:TestMetricFilter",
      "rds:Describe*",
      "rds:List*",
      "route53:List*",
      "s3:GetBucketTagging",
      "s3:ListAllMyBuckets",
      "ses:Get*",
      "ses:List*",
      "sns:List*",
      "sns:Publish",
      "sqs:ListQueues",
      "support:*",
      "tag:getResources",
      "tag:getTagKeys",
      "tag:getTagValues",
      "elasticbeanstalk:Check*",
      "elasticbeanstalk:Describe*",
      "elasticbeanstalk:List*",
      "elasticbeanstalk:Request*",
      "elasticbeanstalk:Retrieve*",
      "elasticbeanstalk:Validate*",
    ]
  }
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    sid     = "sid1"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.newrelic_aws_account}:root"]
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [var.newrelic_external_id]
    }
  }
}
