# S3 Backend Project

## Initialization for the **S3 Bucket** and **DynamoDB** section

- Create variable file and insert **"secret key"** and **Access Key**
- ensure that your backend file is **"commented out"**
- Run Terraform init 
- Run Terrafform apply and build S3 and dynamo Db resources.

## Initialization for the **backened S3** section

- uncomment the terraform backend block. 
- Run **Terraform init**
- Run **Terraform apply**
- Terroform.tfstate would now be stored on s3. 

## Backend Local 
- Used to revert the tfstate back to a local directory
 

 ``
 backend "local" {
     key            = "{path to dir}/terraform.tfstate"
  }

  ``


