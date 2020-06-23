output "url" {
  description = "The URL for the created Amazon SQS queue"
  value       = aws_sqs_queue.this.id
}

output "arn" {
  description = "The ARN of the SQS queue"
  value       = aws_sqs_queue.this.arn
}

output "policy_consumer" {
  description = "The ARN of the consumer IAM policy"
  value       = aws_iam_policy.consumer.arn
}

output "policy_producer" {
  description = "The ARN of the producer IAM policy"
  value       = aws_iam_policy.producer.arn
}
