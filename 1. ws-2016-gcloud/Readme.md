Note: only tested on my machine. I'm unaware of how successful this may be on your machine or Google Cloud subscription. 

## Instructions (beta)

### Requirements (MacOS, Windows, Ubuntu).

1. Install Packer and Terraform.
2. Setup Google Cloud.
3. Add "account.json" key from IAM to **1. ws-2016-gcloud**/ directory.

### Steps

1. Using Packer, build the image with the **win-2016-packer.json**.
2. Using Terraform, run `terraform apply win-2016-01.tf`. 

