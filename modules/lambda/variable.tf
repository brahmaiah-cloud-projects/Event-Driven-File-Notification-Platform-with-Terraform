variable "function_name"  {

  description = "Lambda Function Name"

  type = string

 }


variable  "runtime"  {

  description = "Lambda Run Time"

  type = string

 
 }


variable "handler"  {

  description  = "Lambda handler"

  type = string   



   }



variable "role_arn"  {

  description  = "Lambda Execution Role Arn"

  type  = string


  }


variable "filename"  {

  description  = "Lambda Deployment Package"

  type = string 

  }


variable "sns_topic_arn"   {

  type  = string

  }


variable "bucket_arn"  {

  type  = string

  }



