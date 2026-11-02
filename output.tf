output  "project_name"  {

  value =  local.project


  }



output "topic_arn"  {

  value = module.sns.topic_arn


   }



output "bucket_name"  {

  value  = module.s3.bucket_name


}


output "bucket_arn"  {

  value = module.s3.bucket_arn



 }