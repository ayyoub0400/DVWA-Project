bucket         = "my-terraform-state-bucket"
key            = "env:/test/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-lock-table"
encrypt        = true