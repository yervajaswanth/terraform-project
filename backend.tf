terraform {
  backend "s3" {
    bucket = "three-tier-archi-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}