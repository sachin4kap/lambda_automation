
import boto3

def handler(event, context):
    # Simulated data pull logic
    s3 = boto3.client("s3")
    bucket = event["bucket"]
    key = event["key"]
    
    response = s3.get_object(Bucket=bucket, Key=key)
    data = response["Body"].read().decode("utf-8")
    print("Data pulled from S3:", data)
    return {"statusCode": 200, "body": data}
