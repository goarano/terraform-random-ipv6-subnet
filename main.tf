resource "random_id" "address_bytes" {
  byte_length = ceil(var.prefix/8)
}

locals {
  random_ip = format("%s%s/%s",
    join(":",
      [for i in range(ceil(var.prefix/16)) :
        format("%-04s",
          substr(random_id.address_bytes.hex, 0 + 4*i, 4)
        )
      ]
    ),
    var.prefix <= 112 ? "::" : "",
    var.prefix
  )

  random_private_ip = format("f%s%s",
    "c",
    substr(local.random_ip, 2, length(local.random_ip)-2)
  )
}
