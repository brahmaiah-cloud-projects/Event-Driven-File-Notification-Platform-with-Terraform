import boto3
import os

sns = boto3.client("sns")

def lambda_handler(event, context):

    topic_arn = os.environ["SNS_TOPIC_ARN"]

    bucket_name = event["Records"][0]["s3"]["bucket"]["name"]

    file_name = event["Records"][0]["s3"]["object"]["key"]

    message = f"New file uploaded: {file_name} in bucket {bucket_name}"

    sns.publish(
        TopicArn=topic_arn,
        Subject="S3 Upload Notification",
        Message=message
    )

    return {
        "statusCode": 200
    }