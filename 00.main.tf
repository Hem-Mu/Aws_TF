provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "ap-northeast-3"
}

# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "terraform-up-and-running-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# } # dynamodb table create

# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "hemmu"
#   # Enable versioning so we can see the full revision history of our state files
#   versioning {
#     enabled = true
#   }
#   # Enable server-side encryption by default
#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         sse_algorithm = "AES256"
#       }
#     }
#   }
#   force_destroy = true
#   depends_on = [
#     aws_dynamodb_table.terraform_locks
#   ]
# } # s3 create

/* 
terraform init -backend-config="access_key=AKIA5TOVVFHINU67IIWT" -backend-config="secret_key=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" -backend-config="region=ap-northeast-3" 
*/