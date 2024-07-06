## Google Cloud Storage Provisionning

First we create a storage bucket with terraform.

Steps :
  1 - Connect to Google Console\  
  2 - Create a project
  3 - Go to IAM and add service account and give it `Storage/Admin`Role
  4 - Generate Keys in keys tab of the service account and save them in json format on you local machine
  5 - Install Terraform and Google-SDK on your local machine
  6 - Create a project folder and add two file `main.tf` and `variables.tf`
  7 - Copy and paste the script provided in this repo. Don't forger to change the names 
  8 - `terraform apply` and see the magic happen
