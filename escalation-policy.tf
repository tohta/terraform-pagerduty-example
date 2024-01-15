resource "pagerduty_escalation_policy" "weekday" {
  name      = "Weekday"
  num_loops = 3
  teams     = [pagerduty_team.devops.id]

  rule {
    escalation_delay_in_minutes = 15
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.primary.id
    }
  }
  rule {
    escalation_delay_in_minutes = 15
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.secondary.id
    }
  }
}

resource "pagerduty_escalation_policy" "last_resort" {
  name      = "Last Resort"
  num_loops = 0
  teams     = [pagerduty_team.management.id]

  rule {
    escalation_delay_in_minutes = 1
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.tertiary.id
    }
  }
}
