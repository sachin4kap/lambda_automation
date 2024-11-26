
import boto3

def handler(event, context):
    # Simulated data preprocessing logic
    textract = boto3.client("textract")
    bucket = event["bucket"]
    key = event["key"]

    response = textract.analyze_document(
        Document={"S3Object": {"Bucket": bucket, "Name": key}},
        FeatureTypes=["TABLES", "FORMS"]
    )
    print("Textract response:", response)
    return {"statusCode": 200, "body": response}
