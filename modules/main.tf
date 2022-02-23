#provider "aws" {
#   region     = var.web_region
#  access_key = var.access_key
#  secret_key = var.secret_key
#}

module "apache-webserver-1" {
  source = ".//module-1"
}

module "apache-webserver-2" {
  source = ".//module-2"
}

module "s3-bucket" {
  source = ".//s3"
}  