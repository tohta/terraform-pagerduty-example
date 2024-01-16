# terraform-pagerduty-example

## Steps
1. Install (Homebrew)[https://brew.sh/ja/]

miseとかasdfでもなんでもいい。
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install Terraform
```
brew install terraform
```

3. Clone this repo
```
git clone https://github.com/tohta/terraform-pagerduty-example.git
```

4. Set
```
cat .envrc.example
export TF_VAR_pd_token=*******
```

5. Terrafrom plan
```
terraform plan
```

6. Terraform apply
```
terraform apply
```
