# Terraform AWS EC2 Instance Deployment

This project uses Terraform to provision an EC2 instance in the default VPC of AWS and sets up Docker to run a specified Docker image. GitHub Actions is used for CI/CD to automate the deployment process.

## Prerequisites

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. An AWS account.
3. AWS credentials configured in GitHub secrets.
4. A Docker image to deploy on the EC2 instance.

## Getting Started

### Step 1: Install Terraform

#### macOS
````sh
brew install terraform

#### windows
. Download the Terraform binary from the Terraform website.
. Unzip the package and place the executable in a directory.

#### Linux
. sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
. curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
. sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
. sudo apt-get update && sudo apt-get install terraform

### Step2: Configure AWS Credentials
Set up your AWS credentials in GitHub repository secrets:
 . `AWS_ACCESS_KEY_ID`
 . `AWS_SECRET_ACCESS_KEY`

### Step 3: Create Terraform Configuration Files
Create a directory main.tf, userdata .sh for your Terraform configuration files :

### Step 4: Initialize and Apply Terraform Configuration
Run the following commands:

 1. Initialize Terraform: (terraform init)

 2. Create an execution plan: (terraform plan)

 3. Apply Terraform: (terraform apply)

### Step 5: Automate Deployment with GitHub Actions
Create a GitHub Actions workflow file: `.github/workflows/terraform.yml`

###Additional Information
.  Adjust the AWS region in `main.tf` and the GitHub Actions workflow as needed.
.  Ensure you have set the necessary secrets in your GitHub repository settings.
.  The provided userdata.sh script installs Docker and runs a specified Docker image when the EC2 instance is provisioned.

###Running the Pipeline
Triggering the Workflow
•  Push Changes: Any push to the main branch will trigger the workflow.
•  Pull Requests: Any pull request to the main branch will trigger the workflow.

###Validating the Deployment
1. Check GitHub Actions: Go to the Actions tab in your GitHub repository to monitor the workflow.
2. Verify EC2 Instance: Use the AWS Management Console to verify that the EC2 instance is running and Docker is installed.

###Maintenance and Extension
**Adding New Resources**
•	Edit Terraform Files: Add new resources to your main.tf file.
•	Plan and Apply: Run terraform plan and terraform apply to provision new resources.
**Updating Dependencies**
•	Terraform Version: Update the Terraform version in your workflow file.
•	Provider Versions: Update provider versions in main.tf.
**Debugging and Troubleshooting**
•	Check GitHub Actions Logs: Review logs in the Actions tab.
•	Terraform Debug: Use terraform plan and terraform apply locally for debugging.

**Contact Information**
For questions or support, please contact:

•	Project Maintainer: Mercy Abirhire
•	Email: mabirhire@yahoo.com
•	GitHub: mabihrre1 


