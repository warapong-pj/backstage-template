output "url" {
  value = module.sqs.queue_url
}

output "arn" {
  value = module.sqs.queue_arn
}
