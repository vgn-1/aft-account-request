module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vgn+15@amazon.com"
    AccountName               = "vgn-acct15"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "vgn@amazon.com"
    SSOUserFirstName          = "vgn-acct15"
    SSOUserLastName           = "user"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
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
