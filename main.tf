terraform {



    // use this when working with with Terraform cloud  
    cloud {
        organization = "curlycloud"
        workspaces{
            name = "multi-repo-root"
        }
    }

 


    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "4.34.0"
        }
        github = {
            source  = "integrations/github"
            version = "~> 5.0"
        }
    }

}

// this is for terraform registy module 
module "sample-module" {
  source  = "app.terraform.io/curlycloud/sample-module/aws"
  version = "1.1.0"
}


/*
// This is for Gitub module

provider "github" {
  token = "Github Token"
}


module "testing" {
  source = "github.com/crerem/multi-repo-terraform-module"
}
    
*/
