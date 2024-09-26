variable "prefix" {
  type        = number
  default     = 64
  description = "IPv6 subnet prefix in bits"

  validation {
    condition = (7 <= var.prefix) && (var.prefix <= 128)
    error_message = "Prefix must be a number between 7 and 128."
  }
}

variable "private" {
  type        = bool
  default     = true
  description = "Whether to generate a private subnet"
}
