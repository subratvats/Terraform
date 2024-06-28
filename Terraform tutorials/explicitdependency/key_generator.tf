resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key_details" {
  content  = tls_private_key.pvtkey.private_key_pem
  filename = "C:\\Users\\subra\\Desktop\\terraform\\Terraform tutorials\\explicitdependency\\file.txt"
  # depends_on = [ tls_private_key.pvtkey ]
}