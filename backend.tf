terraform {
  backend "s3" {
    bucket = "aws-jenkins-demo-bucket"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "my-dynamo-db-table"
  }
}
