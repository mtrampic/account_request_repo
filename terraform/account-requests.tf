module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "trampic+ct-immersion-day-aft-sp-1@amazon.com"
    AccountName               = "Spoke-1"
    ManagedOrganizationalUnit = "Sandbox (ou-zym3-hcve13zc)" 
    SSOUserEmail              = "trampic+ct-immersion-day-aft-sp-1@amazon.com"
    SSOUserFirstName          = "Mladen"
    SSOUserLastName           = "Trampic"
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


module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "trampic+ct-immersion-day-aft-sp-2@amazon.com"
    AccountName               = "Spoke-2"
    ManagedOrganizationalUnit = "Labs (ou-zym3-q5k8fu3x)" 
    SSOUserEmail              = "trampic+ct-immersion-day-aft-sp-2@amazon.com"
    SSOUserFirstName          = "Mladen"
    SSOUserLastName           = "Trampic"
  }

  account_tags = {
    "ABC:Owner"       = "mladen@trampic.infp"
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