provider "aws" {
     region = "ap-south-1"
 }
 terraform {
   backend "s3" {
     bucket = "mynag"
     key    = "terraform.tfstate"
     region = "ap-south-1"
     dynamodb_table = "mytable1"
   }
 }
 resource "aws_instance" "web" {
   ami           = "ami-0d2986f2e8c0f7d01"
   instance_type = "t2.micro"
   tags = {
     Name = "HelloWorld"
