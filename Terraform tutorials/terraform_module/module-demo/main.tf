#Only use the module block in the main.tf file, do not add a separate resource block.
# Module Name - iam_iam-user
# Only add the single required argument at this time.
# https://registry.terraform.io/modules/terraform-aws-modules/iam/aws/latest/submodules/iam-user
module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.28.0"
  # insert the 1 required variable here
  name = "max"
  # create_iam_access_key  = false
  # create_iam_user_login_profile = false
}
