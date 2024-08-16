module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vgn+28@amazon.com"
    AccountName               = "vgn-acct28"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "vgn@amazon.com"
    SSOUserFirstName          = "vgn-acct28"
    SSOUserLastName           = "user"
  }

  account_tags = {
    "ABC:Owner"       = "vgn@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "test"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}

module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vgn@amazon.com"
    AccountName               = "vgn"
    ManagedOrganizationalUnit = "Root" 
    SSOUserEmail              = "vgn@amazon.com"
    SSOUserFirstName          = "AWS Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "ABC:Owner"       = "vgn@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "test"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }
  
}

