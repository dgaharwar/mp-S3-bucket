provider "aws" {
    region     = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}
variable "access_key" {
    type         = string
    description  = "AWS Accesss Key"
    sensitive    = true
}
variable "secret_key" {
    type         = string
    description  = "AWS Secret Key"
    sensitive    = true
}
variable "region" {
    type         = string
    description  = "AWS Region"
}
variable "bucket_prefix" {
    type    = string
    default = ""
}

resource "aws_s3_bucket" "dg_bucket" {
  bucket = "${var.bucket_prefix}-xxxxx-xxxxx"
  acl    = "private" # Set access control list to private, other options are public-read, public-read-write, authenticated-read
}
