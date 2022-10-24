What I Choose:
I choosed ARM IAC tool for provisioning my 3 tier architecture in Azure cloud.
This ARM template able to spinup below resources in Azure.
1. Web app services(frontend & backend)with appservice plan.
2. Sql Server
3. Storage account
4. Keyvault.
What I Made
And Used Linked arm templates, which is modularized and reusable.
And made main template is generic for all environments. 
Parameter files i created for Dev ennvironment, similalry we are able to create other environments as well.

Execution & automation:
We required Azure cli to execute ARM template.
for automation tools like jenkins, Azure DevOps its offering ARM deployment tasks.

Integration to Azure:

I recomend to use service principals
