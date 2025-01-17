#!/bin/bash

# Create a resource group in Azure

setup() {
    #install az cli
    curl -sl https://aka.ms/InstallAzureCLIDeb | sudo bash
    az login --use-device-code
    echo "You logged in successfully"
}

#print out 5 recommeded regions
print_regions() {
    regions_array=($( az account list-locations --query "[?metadata.regionCategory=='Recommended'].{Name:name}" -o tsv | head -n 5))
    for i in "${regions_array[@]}"
    do
       echo "$i"
    done
}

# Select a region
check_region() {
    local region_exists=false
    while [[ "$region_exists" = false ]]; do
        print_regions
        read -p "Please select a region from the list above: " selected_region
        for j in "${regions_array[@]}"
        do
            if [[ "$selected_region" == "$j" ]]; then
                region_exists=true
                echo  "region exists"
                break
            else
                continue
            fi
        done
    done
}

#check if resource group exists
check_resource_group() {
    while true; do
        read -p "Enter a name for you resource group: " resource_group
        if [ $(az group exists --name $resource_group) = true ]; then 
            echo "The group $resource_group exists in $selected_region, please provide another name..."
        else
            break
        fi
    done
}

# create resource group
create_resource_group() {
    echo "creating resource group: $resource_group in $selected_region"
    az group create -g $resource_group --location $selected_region | grep provisioningState
    echo "Resource group created successfully"
}

# list all resource groups
list_resource_groups() {
    az group list --output table
}

setup
print_regions
check_region
check_resource_group
create_resource_group
list_resource_groups