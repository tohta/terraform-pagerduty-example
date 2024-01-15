# resource "pagerduty_incident_workflow" "slack" {
#   name = "Create a Slack channel if P1"
# }
# 
# resource "pagerduty_incident_workflow_trigger" "automatic_trigger" {
#   type       = "conditional"
#   workflow   = pagerduty_incident_workflow.slack.id
#   services   = [pagerduty_service.default.id]
#   condition  = "incident.priority matches 'P1'"
#   subscribed_to_all_services = false
# }
