
#echo "substring is $substring"
#echo "job json is $jobs_json"
#$job_json >> temp.json

#echo "github run id is 6003630118"
#echo "Job ID for job containing $substring is $job_id"

#echo "JOB_ID=$job_id" >> $GITHUB_ENV  


substring="(amplify_datastore_example, 33, google_apis)"
jobs_json=$(gh run --repo fjnoyp/amplify-flutter view 6003630118 --json jobs)
job_id=$(echo "$jobs_json" | jq --arg substring "$substring" '.jobs[] | select(.name | contains($substring)) | .id')

echo "job json is $jobs_json"
echo "Job ID for job containing $substring is $job_id"

echo "$jobs_json" | jq --arg substring "$substring" '.jobs[] | select(.name | contains($substring)) | .name'

