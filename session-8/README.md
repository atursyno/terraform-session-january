Generic Provisioner - when we want to share a file to remote system 

Terraform support 3 types of Provisioners

1. File  
   - Sending a file from Terraform server to remote server 
     As long as there is ssh connection between terraform server and remote server, then we can use file provisioning 

    source = "" #path on Terraform Server
    destination = "" #path for the remote server 

2. Remote Exec
   - 

3. Local Exec
