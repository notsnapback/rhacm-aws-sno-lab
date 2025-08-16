output "os_admin_access_key_id" {
  description = "Output Access Key ID for openshift_admin"
  value       = aws_iam_access_key.os_admin.id
}

output "os_admin_secret_key" {
  description = "Output Secret Access Key for openshift_admin"
  value       = aws_iam_access_key.os_admin.secret
  sensitive   = true
}