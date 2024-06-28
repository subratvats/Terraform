# resource "local_sensitive_file" "name" {
#     filename = "/root/user-data"
#     content = "password: S3cr3tP@ssw0rd"
#     count = 3  # it creates file in form of list but  
# } 

# resource "local_sensitive_file" "name" {
#     filename = var.users[count.index]
#     content = var.content
#     count = length(var.users)

# }

resource "local_sensitive_file" "name" {
    filename = each.value
    for_each = toset(var.users) #for_each works with map or set
    content = var.content

}

output "file" {
  value = local_sensitive_file.name
  sensitive = true
}