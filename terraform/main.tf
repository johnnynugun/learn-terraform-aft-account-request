module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jn_aws_sandbox@hotmail.com"
    AccountName               = "Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jn_aws_sandbox@hotmail.com"
    SSOUserFirstName          = "AWS"
    SSOUserLastName           = "Sandbox"
  }

  account_tags = {
    "Name" = "Sandbox"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
