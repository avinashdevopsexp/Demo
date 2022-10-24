curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq
#Query parameters http://169.254.169.254/metadata/<endpoint>/[<filter parameter>/...]?<query parameters>
curl -s -H Metadata:true --noproxy "*" http://169.254.169.254/metadata/instance/compute?api-version=2021-01-01&format=json