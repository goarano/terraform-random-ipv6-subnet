variable "prefix" {
  type        = number
  default     = 64
  description = "IPv6 subnet prefix"
}

variable "private" {
  type        = bool
  default     = true
  description = "Whether to generate a private subnet"
}
