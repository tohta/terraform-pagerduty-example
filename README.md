# terraform-pagerduty-example

## Steps
1. Install (Homebrew)[https://brew.sh/ja/]

miseとかasdfでもなんでもいい。
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Clone this repo
```
git clone https://github.com/tohta/terraform-pagerduty-example.git
```

3. Set PD API Access Key
好きな方法でよし。
```
cat .envrc
export TF_VAR_pd_token=*******
```

4. Install Terraform
```
brew install terraform
```

5. Terrafrom init
```
terraform init
```

6. Terrafrom plan
```
terraform plan
```

7. Terraform apply
```
terraform apply
```
