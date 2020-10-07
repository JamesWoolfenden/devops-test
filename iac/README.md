# To build

```terraform
terraform init
terraform apply
```

## Upgrade

## To Scale up to new AMI

```terraform
terraform apply -var 'max_size=4' -var 'min_size=4'  -var ami_id="ami-0014b4f265307008c"
```

## To scale back down

Leaving only new instances (alternatively use a data source to always get the latest ami according to a filter)

```terraform
terraform apply -var ami_id="ami-0014b4f265307008c"
```

## Notes

$env:AWS_DEFAULT_PROFILE="aws-labs"
$env:AWS_REGION="eu-west-2"

aws-azure-login --profile aws-labs
