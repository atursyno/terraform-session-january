terraform {
    backend "s3"{
        bucket = "terraform-session-september-backend-aika"
        region = "us-east-2"
        key = "session-5/terraform.tfstate" # where does terraform need to store your file. Path or Prefix

    }
}