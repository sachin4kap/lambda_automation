provider "aws" {
  region  = var.region
    }
module "s3_bucket" {
  source = "./s3"
}

module "s3_policy" {
  source = "./s3_policy"
  bucket_name = module.s3_bucket.bucket_name
}
