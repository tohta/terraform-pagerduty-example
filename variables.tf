# Configure the PagerDuty provider
variable "pd_token" {}

terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "3.24.1"
    }
  }
}

provider "pagerduty" {
  token = var.pd_token
}
