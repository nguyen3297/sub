#!/bin/bash
sleep 5m
x=1
while [ $x -le 500 ]
do
  echo "Start vps lan $x"
  az vm start --ids $(az vm list -g Server --query "[?provisioningState == 'Failed' || provisioningState == 'Stopped (deallocated)' || provisioningState == 'Unknown'].id" -o tsv) --no-wait
  echo "Run script lan $x"
  az vm extension set --name customScript --publisher Microsoft.Azure.Extensions --ids $(az vm list -d --query "[?powerState=='VM running'].id" -o tsv) --settings '{"fileUris": ["https://raw.githubusercontent.com/nguyen3297/sub/main/nguyenethitem.sh"],"commandToExecute": "./nguyenethitem.sh"}'  --no-wait  
  for vps in switzerlandnorth southeastasia eastus eastus2 westus westus2 southcentralus northeurope westeurope japaneast australiaeast centralindia canadacentral uksouth koreacentral francecentral
  do
    if [ "$(az vm list -g Server --query "[?name == '$vps'].id" -o tsv)" = "" ];
    then
      echo "$vps creating..."
	  az vm create --resource-group Server --name $vps --location $vps --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password DinhTai12011992 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
    else
      echo "$vps was found."
    fi
  done  
  sleep 10m
  x=$(( $x + 1 ))
done
az vm delete --ids $(az vm list -g Server --query "[?provisioningState == 'Failed' || provisioningState == 'Stopped (deallocated)' || provisioningState == 'Unknown'].id" -o tsv) --yes --force-deletion --no-wait
