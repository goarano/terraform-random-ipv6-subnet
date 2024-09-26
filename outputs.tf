output "subnet" {
  value       = cidrsubnet(terraform_data.random_ip.output, 0, 0)
  description = "A random IPv6 subnet"
}
