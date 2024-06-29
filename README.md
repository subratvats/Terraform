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

Which env variable used to export the logs to a specific path
export TF_LOG_PATH=/path
export TF_LOG=ERROR #to set logging level(INFO,WARNING,ERROR,DEBUG,TRACE)

#Tainted means it will be replaced with new. it happen due to mannual update in the infra. you will see in terraform plan cmd, in the next apply it will recreate
examplecomand
terraform taint aws_instance.ProjectB
terraform untaint aws_instance.ProjectB

##

#terraform import <resource_type>.<resource_name> <attribute>
terraform import azurerm_resource_group.vnet /subscriptions/c4322f3b-d432-4df4-a833-2f585ef510d8/resourceGroups/dockervm-rg/providers/Microsoft.Network/virtualNetworks/dockervm-vnet

##Meta arguement
depends_on , lifecycle, count, for each, provisioner, provider, backend

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
