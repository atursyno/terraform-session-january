What is a Terraform module?
 - A Terraform module is a set of Terraform configuration files in a single directory. Even a simple      configuration consisting of a single directory with one or more .tf files is a module. When you run    Terraform commands directly from such a directory, it is considered the root module. So in this        sense, every Terraform configuration is part of a module.

    Modules can either be loaded from the local filesystem, or a remote source. Terraform supports a variety of remote sources, including the Terraform Registry, most version control systems, HTTP URLs, and Terraform Cloud or Terraform Enterprise private module registries



Terraform consist of 2 modules:
 - Child Modules - declare the resources 
 - Root Modules  - call the child module, run Terraform commands

 Child Module has 2 Modules 

 - Local module - module is in your filesystem
 - Remote module - SCM, HTTP, URL, Terraform Cloud or Enterprise Private Registeries


 How to reference to Child Module?
   - You always refenrece to Child Module 



What is Root Module and Child Module?
Root Module:
Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the .tf files in the main working directory.

In simple, the directory where you do followings:

Run the Terraform Commands such as init, plan, and apply
Call the modules locally or remotely
Combine the modules and build a solution
Child Module:
A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as a child module.

Child modules can be called multiple times within the same configuration, and multiple configurations can use the same child module.

In simple, the directory where you do followings:

Define the creations of resources
Do not run the commands






Git release - is snapchot of your code
Git tag for symmentic versioning 


Terraform by deafult doesn't have a rollback option for that we use revision 