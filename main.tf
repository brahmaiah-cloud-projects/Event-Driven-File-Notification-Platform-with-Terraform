locals  {

  project = var.project_name


}


module "sns"  {

  source =  "./modules/sns"
  topic_name = var.topic_name
  email_address = var.email_address

  }


module "s3" {

  source = "./modules/s3"
 
  bucket_name =  var.bucket_name
  
  lambda_arn =   module.lambda.lambda_arn


  }

module "lambda" {

  source = "./modules/lambda"

  function_name = var.function_name

  runtime = var.runtime

  handler = var.handler

  filename = var.filename
  
  role_arn  = module.iam.role_arn

  sns_topic_arn  = module.sns.topic_arn

  bucket_arn = module.s3.bucket_arn

 }


module "iam"  {

  source    = "./modules/iam"

    }


