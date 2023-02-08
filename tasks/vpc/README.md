### Create a VPC using Terraform IAAC tool

**Description**

- [ ]  This is a simple Terraform code that will create a VPC .

- [ ]  There are 3 public and 3 private subnets created

- [ ]  Created an InternetGatway and NatGateway

- [ ]  Created a Public RouteTable
- Attached the InternetGateway to Public Route Table
- Associated 3 public subnets

- [ ]  Created a Private RouteTable
- Attached the NatGateway to Private RouteTable
- Associated 3 Private subnets



vpc.jpeg

### Usage

- To quickly install and destroy ec2 instance in aws cloud

### prerequisites

- first make sure you have an AWS account. you can use this link to open an account in AWS.

`https://portal.aws.amazon.com/billing/signup`

- git locally installed
- terraform locally installed and AWS credentials are being setup for authentication.

### How to use this code?

- step one: clone the repo

`git clone https://github.com/atursyno/terraform-session-january.git`

- change the directory to tasks/vpc and run terraform commands.

`cd tasks/vpc
terraform init
terraform plan
terraform apply`