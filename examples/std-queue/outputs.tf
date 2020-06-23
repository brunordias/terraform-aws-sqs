output "sqs_url" {
  description = "The URL for the created Amazon SQS queue"
  value       = module.sqs.url
}

output "sqs_arn" {
  description = "The ARN of the SQS queue"
  value       = module.sqs.arn
}

output "sqs_policy_consumer" {
  description = "The ARN of the consumer IAM policy"
  value       = module.sqs.policy_consumer
}

output "sqs_policy_producer" {
  description = "The ARN of the producer IAM policy"
  value       = module.sqs.policy_producer
}

output "sqs_url_dead_letter" {
  description = "The URL for the created Amazon SQS queue"
  value       = module.sqs_dead_letter.url
}

output "sqs_arn_dead_letter" {
  description = "The ARN of the SQS queue"
  value       = module.sqs_dead_letter.arn
}

output "sqs_policy_consumer_dead_letter" {
  description = "The ARN of the consumer IAM policy"
  value       = module.sqs_dead_letter.policy_consumer
}

output "sqs_policy_producer_dead_letter" {
  description = "The ARN of the producer IAM policy"
  value       = module.sqs_dead_letter.policy_producer
}