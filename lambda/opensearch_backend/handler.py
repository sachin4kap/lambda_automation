
import boto3
import json

def handler(event, context):
    # Simulated OpenSearch interaction logic
    opensearch_client = boto3.client("opensearch")
    
    try:
        # Example: Perform a search query on an OpenSearch index
        index_name = event.get("index_name")
        query = event.get("query", {})
        
        if not index_name or not query:
            return {
                "statusCode": 400,
                "body": json.dumps({"error": "Missing 'index_name' or 'query' in request"})
            }

        response = opensearch_client.search(
            IndexName=index_name,
            Query=query
        )
        
        return {
            "statusCode": 200,
            "body": json.dumps({"results": response})
        }
    except Exception as e:
        print(f"Error querying OpenSearch: {e}")
        return {
            "statusCode": 500,
            "body": json.dumps({"error": str(e)})
        }
