# Terraform for Azure Container Instance (ACI) & Azure Container Registry (ACR)
This repository contains Terraform configurations to deploy Azure Container Instance (ACI) and Azure Container Registry (ACR) from end to end, ensuring seamless containerized application deployment and management.

## Services Included
1. **Azure Container Registry (ACR)** – A private container registry to store and manage Docker images securely.
2. **Azure Container Instance (ACI)** – A serverless container runtime that allows running containers in an isolated and scalable environment.

## Terraform Files in This Repository
The repository is structured with modular Terraform files for better manageability and reusability:

- main.tf – The main configuration file that orchestrates the deployment of ACR and ACI.
- provider.tf – Configures the Azure provider and authentication.
- variables.tf – Defines all input variables for flexible configuration.
- output.tf – Specifies output values, such as ACR login credentials and Username , Passwords also.
- container_instance.tf – Contains the Terraform configuration for deploying an Azure Container Instance (ACI).
- container_registry.tf – Defines the Azure Container Registry (ACR) setup, including access policies.
- dev.tfvars, qa.tfvars, staging.tfvars, prod.tfvars – Environment-specific configuration files to manage different deployments.

## Uses and Benefits of This Setup
- Fully Automated Deployment: Deploys ACR and ACI in a single Terraform execution, eliminating manual setup.
- Environment-Specific Configurations: Use .tfvars files to manage settings across development, QA, staging, and production environments.
- Scalable and Cost-Effective: ACI provides on-demand compute power without managing virtual machines, reducing infrastructure overhead.
- Secure Image Storage & Deployment: ACR securely stores container images, ensuring they are accessible only to authorized ACI instances.
- Easier CI/CD Integration: Automate container deployments by integrating Terraform with Azure DevOps, GitHub Actions, or other CI/CD tools.
- Consistent & Repeatable Infrastructure: Ensures a predictable infrastructure state, reducing drift and manual errors.
