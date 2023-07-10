---
Title: Terraform Code to deploy Azure Resources
description: A simple terraform code to deploy 1 Virutal Network with 3 Subnets , 3 windows VMs with IIS installation
---
# Terraform-VnetSnetVMwithIIS
Terraform code to deploy 1 Virutal Network with 3 Subnets , 3 windows VMs with IIS installation

## How to Use
  ### Pre-requisite 
  1.  Terraform.exe file for windows greater than or equal to 1.5.0
  2.  An Active Azure Subscription ( where all resources will be deployed)
  3.  PowerShell
  4.  Install Azure CLI (latest version)

  ### Establish connectivity from PowerShell to Azure Portal 
    Run below command to connect Azure from PowerShell
    First make sure to clear previously connected Azure session,
        use below command to clear previosly connected sessions in PowerShell
     1. > az account clear
        
      - Login to Azure from PowerShell
     2. > az login
        
     - Set the subscription where resources need to be deployed
     3. > az account set --subscription 9s2serwc4-7b075-422f-c1549-5e08c98509142
  The above PowerShell commands can also be run from PowerShell terminal in VS-Code editor

  ### Follow the below steps to run this code and deploy resources
      1.  Download all Terraform Files in your local PC.
      - Go to PowerShell Terminal and set your Present working directory to the folder where you have kept all terraform files.
        Run below terraform commands one by one in sequence
      2. > terraform init
      - or,     
        > terraform init -upgrade
        
    #The **-upgrade** parameter upgrades the necessary provider plugins to the
      newest version that complies with the configuration's version constraints.
    
      3. > terraform plan -out myPlan.tfplan
         
    #The terraform plan command creates an execution plan, but doesn't execute it.
    
      4. > terraform apply myPlan.tfplan
         
    #This command will start creating the resources in Azure Portal

 ### Follow the below steps to view the password for VMs
    In this code password to login into VMs are confidential and not visible to anyone. 
    To know the secret value of the password run the below command in PowerShell
    
    1. > terraform output -raw VM1-admin_password
    
    # Replace VM1 with VM2 and VM3 to see their passwords    
     
 ### Follow the below steps to destroy or remove the resources deployed
    To destroy or clean up the resoruces you deployed use the below commands
    
    1. > terraform plan -destroy -out myPlan-destroy.tfplan

    #This will create a destroy plan but won't destroy or delete anything.

    2. > terraform apply myPlan-destroy.tfplan

    #This will start deleting the resources from Azure Portal
    



















      
