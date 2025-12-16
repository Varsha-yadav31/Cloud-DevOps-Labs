# Terraform EC2 Deployment using AWS Cloud9
 **install Terraform**, configure **AWS credentials**, and **launch an EC2 instance** using Terraform in the **AWS Cloud9 terminal**.

---

## Step 1: Install Terraform in Cloud9

Run the following commands in the Cloud9 terminal to install Terraform:

```bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```

Verify the installation:

```bash
terraform -version
```

---

## Step 2: Configure AWS Credentials

Paste your **AWS Access Key** and **Secret Key** (from AWS IAM user details):

```bash
export AWS_ACCESS_KEY_ID="PASTE-HERE"
export AWS_SECRET_ACCESS_KEY="PASTE-HERE"
```

---

## Step 3: Create Terraform Project Directory

```bash
mkdir terraform-demo
cd terraform-demo
nano main.tf
```

---

## Step 4: Write Terraform Configuration (main.tf)

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316"  # Ubuntu AMI for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}
```

Save the file and exit the editor.

---

## Step 5: Run Terraform Commands

Execute the following commands inside the project directory:

```bash
terraform init
terraform plan
terraform apply
```

Type **yes** when prompted.

---

## Step 6: Verify EC2 Instance

* Go to **AWS Console → EC2 → Instances**
* Verify that the instance is in **running** state
* Take a screenshot for lab or assignment submission

---

## Step 7: Destroy Resources (Cleanup)

After verification, delete the EC2 instance to avoid charges:

```bash
terraform destroy
```

---

## Notes

* Ensure IAM user has EC2 permissions
* Always destroy resources after use
* This setup is for **educational and lab purposes only**

---

**Course:** INT363 – Cloud & Microservices
**University:** Lovely Professional University
