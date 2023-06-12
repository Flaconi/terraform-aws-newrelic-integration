variable "newrelic_aws_account" {
  type = string
}

variable "newrelic_external_id" {
  type = string
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}
