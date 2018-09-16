# Infra as a code pipeline
Pipeline for create a enviroment using aws services like ECS, ECR, ROUTE53 etc...

## Author. Zandler Oliveira
## Date. 13/09/2018
## Email. zandler.oliveira@gmail.com

# Steps

## Edit values in terraform.tfvars

`terraform.tfvars` has all variable wich yout need , so, change that file nothing more! 

## How to Deploy

### 1) Export token from github. If you need to create one, fllow this link:

* How create a token in Github (https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/). 

### After, export to SO enviroment variable

```bash
export GITHUB_TOKEN=YOUR_TOKEN
``` 

### 2) Now let's make magic :P
With terrform initialize, plan and apply!
This will slowly, so get a cup of coffe

```bash
terraform init
```
```bash
terraform plan
```

```bash
terraform apply
```

### If you need to remove all enviroment:

```bash
terraform destroy
```
