# Configure the PagerDuty provider
variable "pd_token" {}

terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "3.7.0"
    }
  }
}

provider "pagerduty" {
  token = var.pd_token
}
