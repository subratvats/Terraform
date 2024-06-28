# Terraform

learning terraform
#command
terraform state [list, mv,pull,rm,show]
terraform init
terraform plan
terraform apply
terraform fmt
terraform output
terraform validate
terraform show
terraform providers # to check all the provider used
terraform providers mirror /root/terraform/new_local_file # it copy all the pluggin from one path to other
terraform refresh # it update the state file...it also run as a part of plan and apply
terraform graph # we can use graphviz tool to convert to image

##Meta arguement
depends_on , lifecycle, count, for each, provisione, provider, backend

  <!-- lifecycle example -->

resource "local_file" "pet" {
filename = var.filename
content = var.content["statement1"]

lifecycle {

# create_before_destroy = true

# prevent_destroy = true

# ignore_changes = [ filename, content ]

    }

}
