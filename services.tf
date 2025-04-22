# technical services
resource "pagerduty_service" "payment" {
  name = "Payment Processing"
  escalation_policy = pagerduty_escalation_policy.weekday.id
  alert_creation = "create_alerts_and_incidents"
  acknowledgement_timeout = "null"
  auto_resolve_timeout    = "null"
}

resource "pagerduty_service_integration" "email_x" {
  name              = "Email X"
  type              = "generic_email_inbound_integration"
  integration_email = "payment"
  service           = pagerduty_service.payment.id
}

resource "pagerduty_service_integration" "apiv2" {
  name              = "API V2"
  type              = "events_api_v2_inbound_integration"
  service           = pagerduty_service.payment.id
}


# business services
resource "pagerduty_business_service" "webapp" {
  name             = "My Web App"
  description      = "A very descriptive description of this business service"
  point_of_contact = "PagerDuty Admin"
  team             = pagerduty_team.management.id
}

resource "pagerduty_service_dependency" "webapp" {
    dependency {
        dependent_service {
            id = pagerduty_business_service.webapp.id
            type = "business_service"
        }
        supporting_service {
            id = pagerduty_service.payment.id
            type = "service"
        }
    }
}

output "payment_apiv2_integration_key" {
  value = pagerduty_service_integration.apiv2.integration_key
}
