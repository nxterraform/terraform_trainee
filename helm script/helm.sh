#!/bin/bash

echo "Enter the chart Name: "
#Read User Input
read folder_name

#Print chart name entered by user
echo "Entered chart Name is: $folder_name"

#Create Directory using chart name
echo "Creating $folder_name directory..."
mkdir $folder_name

echo "Creating files in $folder_name..."
touch "$folder_name/chart" "$folder_name/chart.yaml" "$folder_name/values.yaml"

cd $folder_name
    
    mkdir templates

echo "Creating files in templates..."
touch "templates/deployment.yaml" "templates/helpers.tpl" "templates/hpa.yaml" "templates/ingress.yaml" "templates/notes.txt" "templates/serviceaccount.yaml" "templates/service.yaml"