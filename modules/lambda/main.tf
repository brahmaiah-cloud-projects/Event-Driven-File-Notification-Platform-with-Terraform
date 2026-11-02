resource "aws_lambda_function"  "lambda"  {

  function_name  = var.function_name

  runtime  = var.runtime

  role  = var.role_arn

  handler  = var.handler

  filename = var.filename

  source_code_hash = filebase64sha256(var.filename)

  environment {
    variables = {
      SNS_TOPIC_ARN = var.sns_topic_arn
    }
  }
}



resource "aws_lambda_permission"  "allow_s3"  {

  statement_id  =  "AllowExecutionFromS3"

  action  = "lambda:InvokeFunction"

  function_name  = aws_lambda_function.lambda.function_name

  principal  = "s3.amazonaws.com"

  source_arn  = var.bucket_arn


  }



