resource "aws_instance" "app_server" {
  ami = var.ami
  instance_type =  "t2.medium"
  tags = {
    Name = "${var.app_region}-app-server"
  }
  depends_on = [ aws_dynamodb_table.payroll_db,
                 aws_s3_bucket.payroll_data
               ]

}


resource "aws_dynamodb_table" "payroll_db" {
  name           = "${var.app_region}_user_data"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "EmployeeID"

  attribute {
    name = "EmployeeID"
    type = "N"
  }
  attribute {
    name = "Department"
    type = "S"
  }
  attribute {
    name = "age"
    type = "N"
  }
  attribute {
    name = "Address"
    type = "S"
  }
  global_secondary_index {
    name             = "EmployeeID"
    hash_key         = "EmployeeID"
    projection_type    = "ALL"
    
  }
  global_secondary_index {
    name             = "age"
    hash_key         = "age"
    projection_type    = "ALL"
    
  }
  global_secondary_index {
    name             = "Department"
    hash_key         = "Department"
    projection_type    = "ALL"
    
  }
   global_secondary_index {
    name             = "Address"
    hash_key         = "Address"
    projection_type    = "ALL"
    
  }
}

resource "aws_s3_bucket" "payroll_data" {

  bucket = "${var.app_region}-${var.bucket}"

}

variable "app_region" {
    default = "us-east-1"
}
variable "ami" {
    type = string
    default = "ami-24e140119877avm"
}
variable "bucket" {
    default = "flexit-payroll-alpha-22001c"
}