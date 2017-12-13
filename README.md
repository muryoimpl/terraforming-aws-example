# terraforming-aws

## Prerequirements

you need to install below.

- terraform
- direnv
- aws-cli

## Setup

Create .envrc and edit like below.
```sh
$ vim .envrc
export AWS_ACCESS_KEY_ID="XXXXXXXXXXX"
export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXX"
```

Load .envrc
```sh
$ direnv allow
```

Create s3 bucket to store remote state.
```sh
$ cd setup
$ terraform init
$ terraform plan
$ terraform apply
```
