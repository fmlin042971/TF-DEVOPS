# 1. Use Case

Implement a Python-based Azure Function App with Infrastructure as Code (IaC) in a DevOps environment. The primary goals are to store Terraform state securely (in Terraform Cloud), automate infrastructure creation (Azure Function App) and Python Code Deployment in the Azure subscription, and streamline CI/CD with Azure DevOps.

# 2. Resouces

- ### Visual Studio Code (Local Computer installation)
- ### portal.azure.com (free trail account for Azure Subscription) 
- ### app.terraform.io (free trail account for Terraform Cloud) 
- ### aex.dev.azure.com/ (free trail account for Azure DevOps)
- ### youtu.be/z98wFAGETpI?si=ONTdlSQzD00_wmZk (follow this video to setup Azure DevOps Agent) 

# 3. Architecture Flow (Local Deployment and Pipeline Depolyment 

Local Deployment: 


![Local Deployment](2025-02-08-13-13-41-image.png)




Pipeline Deployment: 

![Local Deployment](pipeline.png)


# 4. Step by Step Overview

1. **Terraform Cloud (app.terraform.io)**
  
  - Create a **Terraform Cloud organization** and a **workspace** for storing Terraform state and environment variables.

2. **Azure DevOps Repository**
  
  - Host **both** Terraform code (for infrastructure) and Python Function App code in a single or multi-folder repo, ensuring version control and easy collaboration.

3. **Azure Service Principal**
  
  - In Azure, create a **service principal** with the right permissions.
  - Configure a **service connection** in Azure DevOps, enabling secure pipeline access to your Azure resources.

4. **Local Workspace**
  
  - Organize local directories:
    - **`terraform/`** for IaC code
    - **`function_app/`** for the Python Function code
  - Set up Python environment for local development and testing.

5. **Local Testing (Terraform)**
  
  - Run `terraform init/plan/apply` from your local machine, referencing **Terraform Cloud** as the backend.
  - Validate that you can provision and destroy the Azure Function App and any related resources successfully.

6. **Azure DevOps Pipeline**
  
  - Create a pipeline that:
    1. **Checks out** the repo.
    2. **Runs Terraform** (using the service principal credentials) to manage infrastructure.
    3. **Builds and deploys** the Python Function App to Azure.
  - Configure triggers (push/merge to main) to **automate** the entire workflow.
