
# CST8918 - DevOps: Infrastructure as Code
Professor: Robert McKenney

## Final Project: Terraform, Azure AKS, and GitHub Actions
# Team#4

- Ankit Jagadeshbha Patel
- Akin Kuyga
- Rabbikali Dhuka
- Himanshu


### Overview
This capstone project harnesses the collective skills in Infrastructure as Code (IaC) developed over the term. We're revisiting the Remix Weather Application from week 3, this time with Terraform creating the necessary Azure resources. The project includes deploying Azure Kubernetes Service (AKS) clusters and a managed Redis DB, backed by automated Terraform workflows through GitHub Actions.

Our Terraform setup is neatly tucked away in an Azure Blob Storage backend. Organized into modules, our Terraform scripts reflect a real-world multi-environment (dev, test, prod) setup with collaboration from multiple team members.

### Automated Tests
- Static tests on any push to any branch.
- Terraform plan and tflint on pull requests to main.

### Deployment
- Build and deploy the Remix Weather Application to test on pull request to main.
- Deploy infra changes on merge to main.
- Deploy application to prod on merge to main with application code change.

### Requirements

#### Collaboration
- Repository: [Github Repo](#)
- Team Members:
  - https://github.com/kuyg0002
  - https://github.com/patel-Lab
  - https://github.com/dhukarabbik
  - https://github.com/H-mactavish-algonquin

- Collaborator Professor: [rlmckenney](https://github.com/rlmckenney)
- Branch protection and PR reviews are set it up.

#### Resources Defined
- All infra and app code in a single repository.
- Modules for Azure Blob Storage backend, network infrastructure, AKS clusters.
- Naming conventions and IP addressing strategies per environment.

#### Automate Workflows
- Federated identities for GitHub Actions.
- Workflows for Terraform tasks, tflint, plan and apply.
- Docker build and push to ACR for app code changes.
- Deployment to test and prod AKS clusters.

## Submission
- GitHub repo URL: https://github.com/H-mactavish-algonquin/cst-8918-Final-Project/
- Added rlmckenney as a collaborator.
- README.md describes the project, team, and running instructions.
- Screenshot of GitHub Actions workflows:

 ![A screenshot of a computer Description automatically
generated](./1.png)

