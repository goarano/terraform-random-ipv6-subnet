output "subnet" {
  value       = var.private ? cidrsubnet(local.random_private_ip, 0, 0) : cidrsubnet(local.random_ip, 0, 0)
  description = "A random IPv6 subnet"
}
