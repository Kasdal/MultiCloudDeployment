# Multi-Cloud-Project

## Description
This is a demonstration of a multi-cloud project i did for the writen term paper on multi-cloud. The project is a simple web application (Wordpress) that is deployed on a Kubernetes cluster. The Kubernetes cluster is deployed on GCP while the database will be on AWS. The project is deployed and configured using Terraform.

## Prerequisites
- Terraform
- GCP account
- AWS account
- GCP service account key
- AWS access key and secret key

## Steps
1. Clone the repository
2. Create a GCP service account key and save it as `gcp.json`
3. Create an AWS access key and secret using aws cli and store in .aws/credentials
4. Change variables in `variable.tf` to your current project id and region
5. Run `terraform init`
6. Run `terraform plan`
7. Run `terraform apply`

## Architecture
![Architecture](

## Author
- [Milan Ples](


