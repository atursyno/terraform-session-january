What is a Terraform module?
 - A Terraform module is a set of Terraform configuration files in a single directory. Even a simple      configuration consisting of a single directory with one or more .tf files is a module. When you run    Terraform commands directly from such a directory, it is considered the root module. So in this        sense, every Terraform configuration is part of a module.

    Modules can either be loaded from the local filesystem, or a remote source. Terraform supports a variety of remote sources, including the Terraform Registry, most version control systems, HTTP URLs, and Terraform Cloud or Terraform Enterprise private module registries



