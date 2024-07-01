output "vm_id" {
  description = "The ID of the virtual machine"
  value = module.dev-env-vm.vm_id
}

output "vm_name" {
  description = "The name of the virtual machine"
  value = module.dev-env-vm.vm_name
}

output "public_ip" {
  value = module.dev-env-vm.public_ip
}