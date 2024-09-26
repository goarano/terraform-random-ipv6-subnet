output "subnet" {
  value       = var.private ? cidrsubnet(terraform_data.random_private_ip.output, 0, 0) : cidrsubnet(terraform_data.random_ip.output, 0, 0)
  description = "A random IPv6 subnet"
}
