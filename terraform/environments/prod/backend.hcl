bucket         = "my-terraform-state-bucket"
key            = "env:/prod/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-lock-table"
encrypt        = true