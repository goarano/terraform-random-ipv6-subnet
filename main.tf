resource "random_id" "address_bytes" {
  byte_length = ceil(var.prefix/8)
}

resource "terraform_data" "random_ip" {
  input = format("%s::/%s",
    join(":",
      [for i in range(ceil(var.prefix/16)) :
        format("%-04s",
          substr(random_id.address_bytes.hex, 0 + 4*i, 4)
        )
      ]
    ),
    var.prefix
  )
}
