# DevOps Team
resource "pagerduty_team" "devops" {
  name        = "DevOps Team"
  description = "Managed by Terraform"
}

resource "pagerduty_team_membership" "devops_engineer01" {
  team_id = pagerduty_team.devops.id
  user_id = pagerduty_user.engineer01.id
}

resource "pagerduty_team_membership" "devops_engineer02" {
  team_id = pagerduty_team.devops.id
  user_id = pagerduty_user.engineer02.id
}

resource "pagerduty_team_membership" "devops_engineer03" {
  team_id = pagerduty_team.devops.id
  user_id = pagerduty_user.engineer03.id
}

# Management Team
resource "pagerduty_team" "management" {
  name        = "Management Team"
  description = "Managed by Terraform"
}

resource "pagerduty_team_membership" "management_manager01" {
  team_id = pagerduty_team.management.id
  user_id = pagerduty_user.manager01.id
}

resource "pagerduty_team_membership" "management_manager02" {
  team_id = pagerduty_team.management.id
  user_id = pagerduty_user.manager02.id
}
