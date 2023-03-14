provider "aws" {
  region = "eu-west-1"
}
resource "aws_s3_bucket" "bootcamp30-28-powerteamt" {
  bucket = "bootcamp30-28-powerteam"
  tags = {
    Name        = "KMSseceretBucket"
    Environment = "main"
  }
}
resource "aws_kms_key" "mykey" {
  description = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 20
}


  

