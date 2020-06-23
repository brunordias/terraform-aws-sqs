provider "aws" {
  region = "us-east-1"
}

module "sqs" {
  source         = "../../"
  name           = "terraform-sqs-test"
  fifo_queue     = false
  redrive_policy = "{\"deadLetterTargetArn\":\"${module.sqs_dead_letter.arn}\",\"maxReceiveCount\":5}"
  tags = {
    environment = "development"
  }
}

module "sqs_dead_letter" {
  source     = "../../"
  name       = "terraform-sqs-test-dead-letter"
  fifo_queue = false
  tags = {
    environment = "development"
  }
}
