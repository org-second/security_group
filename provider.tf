 provider "aws" {
     sharedcredentials_file = "/aws/credentials"
     profile = "default"
     region = var.aws_region
 }
