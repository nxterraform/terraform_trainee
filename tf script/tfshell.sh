    #!/bin/bash

    var=$(pwd)

    chmod +x  $var/tfshell.sh 2> /dev/null

    mv $var/tfshell.sh /usr/local/bin/tfshell  2> /dev/null

    ls /usr/local/bin/ | grep tfshell  2> /dev/null

    if [ $? -eq 0 ]; then

    echo "Enter the Module Name: "
    #Read User Input
    read folder_name

    #Print module name entered by user
    echo "Entered Module Name is: $folder_name"

    #Create Directory using module name
    echo "Creating $folder_name directory..."
    mkdir $folder_name

    echo "Creating files in $folder_name..."
    touch "$folder_name/main.tf" "$folder_name/variables.tf" "$folder_name/outputs.tf" "$folder_name/terraform.tfvars" "$folder_name/providers.tf" "$folder_name/backend.tf"

    else
    echo "permission issues while moving file to /usr/local/bin"
    exit 1

    fi