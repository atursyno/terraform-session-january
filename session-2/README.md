Blocks:
A block is a container for other conten:
A block has a type (resource in this example).

Each block type defines how many labels must follow the type keyword
The resource block type expects two labels, which are:
aws_instance and first ec2 in the example
 "aws_instance" "first_ec2"
Terraform has 2 main Blocks :
Resource Block

Create and Manage resources Resource Block expects 2 labels which are "First label" and "Second label" 1.First Label:
This is predefined by Terraform
This label indicates the resource
Example:
 “was_instance” 
Second Label:

Second Label:

This is defined by Author
This label indicates the logical name of the resource. Logical name or id must be unique
   example: 
   "first_ec2"
Data Source Block
Fetch the data from existing resources
ARGUMENTS:
An argument assigns a value to a particular name The identifier before he equals sign is the argument name, and the expression after the equals sign is the argument’s value Argument consist of name and value

Example:
Argument Name: 
 - This is predefined by Terraform 
 - Configuration of your resource 
 - Example: ami 
Argument Value: 
  - This is predefined by Author 
Working directory:
Where you have all your working configuration file
You run terraform command on your working directory