Azure Instance Metadata Service:
The Azure Instance Metadata Service (IMDS) provides information about currently running virtual machine instances. You can use it to manage and configure your virtual machines. This information includes the SKU, storage, network configurations, and upcoming maintenance events.

Executions:
found IMDS support two platforms like windows and linux.
we need to use 
for windows : Invoke-RestMethod
ex: Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64
For linux : curl
curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq
Output:
The response is a JSON string. The following example response is pretty-printed for readability.

Query parameters
IMDS endpoints support HTTP query string parameters.
http://169.254.169.254/metadata/<endpoint>/[<filter parameter>/...]?<query parameters>

/metadata/attested	See Attested Data	2018-10-01
/metadata/identity	See Managed Identity via IMDS	2018-02-01
/metadata/instance	See Instance Metadata	2017-04-02
/metadata/loadbalancer	See Retrieve Load Balancer metadata via IMDS	2020-10-01
/metadata/scheduledevents	See Scheduled Events via IMDS	2017-08-01
/metadata/versions	See Versions	N/A