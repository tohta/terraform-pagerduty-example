# resource "pagerduty_event_orchestration" "orcatest" {
#   name = "orcatest"
#   description = "TESTING"
#   team = pagerduty_team.devops.id
# }
# 
# resource "pagerduty_event_orchestration_global" "global" {
#   event_orchestration = pagerduty_event_orchestration.orcatest.id
#   set {
#     id = "start"
#     rule {
#       disabled = false
#         actions {
#           drop_event   = false
#           event_action = "trigger"
#           severity     = "critical"
#           suppress     = true
#           suspend      = 0
#         }
#         condition {
#           expression = "event.custom_details.from[0] matches part 'hello@example.com'"
#         }
#       }
#     }
#   catch_all {
#     actions {}
#   }
# }
