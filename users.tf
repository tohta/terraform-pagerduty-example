resource "pagerduty_user" "engineer01" {
  name        = "エンジニア 太郎"
  email       = "engineer01@example.com"
  description = "Managed by Terraform"
  role        = "limited_user"
  color       = "royal-blue"
}

resource "pagerduty_user" "engineer02" {
  name        = "エンジニア 次郎"
  email       = "engineer02@example.com"
  description = "Managed by Terraform"
  role        = "limited_user"
  color       = "lime"
}

resource "pagerduty_user" "engineer03" {
  name        = "エンジニア 三郎"
  email       = "engineer03@example.com"
  description = "Managed by Terraform"
  role        = "limited_user"
  color       = "orange-red"
}

resource "pagerduty_user" "manager01" {
  name        = "マネージャ 花子"
  email       = "manager01@example.com"
  description = "Managed by Terraform"
  color       = "deep-pink"
}

resource "pagerduty_user" "manager02" {
  name        = "マネージャ よしこ"
  email       = "manager02@example.com"
  description = "Managed by Terraform"
  color       = "olivedrab"
}
