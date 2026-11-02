
resource  "aws_s3_bucket"  "niru_bucket"  {

  bucket  = var.bucket_name

  }


resource "aws_s3_bucket_notification"  "trigger"  {

  bucket  = aws_s3_bucket.niru_bucket.id

  lambda_function  {

    lambda_function_arn   =  var.lambda_arn

    events   = ["s3:ObjectCreated:*"]


  }

 }
