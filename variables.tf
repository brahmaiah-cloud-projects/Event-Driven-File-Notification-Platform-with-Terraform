variable "project_name"  {

  description  =  "Project Name"

  type  =  string

 }


variable "topic_name"  {

  description = "SNS Topic Name"

  type = string


 }


variable "bucket_name"  {

  description = "S3 Bucket Name" 

  type =  string


  }



variable "function_name" {

  description = "Lambda Function Name"

  type = string 

 }

variable "runtime"  {

  description =  "Lambda Run Time"

  type = string

 }

variable "handler"  {

  description  = "Lambda Handler" 
 
  type = string

 }


variable "filename"  {

  description = "Lambda File Name" 

  type = string 


 }


variable "email_address" {

  description = "Email address for SNS notifications"

  type = string

}