terraform {}

locals {
  hello = "Hello, world!"
}

output "hello" {
  value = local.hello
}
