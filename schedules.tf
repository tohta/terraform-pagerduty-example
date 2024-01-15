resource "pagerduty_schedule" "primary" {
  name = "Primary On-call Schedule"
  description = "Managed by Terraform"
  time_zone = "Asia/Tokyo"
  layer {
    name                         = "Default Shift"
    start                        = "2024-01-01T00:00:00+09:00"
    rotation_virtual_start       = "2024-01-01T00:00:00+09:00"
    rotation_turn_length_seconds = 86400
    users                        = [
      pagerduty_user.engineer01.id,
      pagerduty_user.engineer02.id,
      pagerduty_user.engineer03.id,
    ]
  }
  teams = [pagerduty_team.devops.id]
}

resource "pagerduty_schedule" "secondary" {
  name = "Secondary On-call Schedule"
  description = "Managed by Terraform"
  time_zone = "Asia/Tokyo"
  layer {
    name                         = "Default Shift"
    start                        = "2024-01-01T00:00:00+09:00"
    rotation_virtual_start       = "2024-01-01T00:00:00+09:00"
    rotation_turn_length_seconds = 86400
    users                        = [
      pagerduty_user.engineer02.id,
      pagerduty_user.engineer03.id,
      pagerduty_user.engineer01.id,
    ]
  }
  teams = [pagerduty_team.devops.id]
}

resource "pagerduty_schedule" "tertiary" {
  name = "Tertiary On-call Schedule"
  description = "Managed by Terraform"
  time_zone = "Asia/Tokyo"
  layer {
    name                         = "Default Shift"
    start                        = "2024-01-01T00:00:00+09:00"
    rotation_virtual_start       = "2024-01-01T00:00:00+09:00"
    rotation_turn_length_seconds = 86400
    users                        = [
      pagerduty_user.manager01.id,
      pagerduty_user.manager02.id,
    ]
  }
  teams = [pagerduty_team.management.id]
}
