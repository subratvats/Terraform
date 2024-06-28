resource "local_file" "dog" {
  filename = "pets.txt"
  content = data.local_file.dog.content
}
data "local_file" "dog" {
    filename = "C:\\Users\\subra\\Desktop\\terraform\\Terraform tutorials\\datasource\\dog.txt"
}