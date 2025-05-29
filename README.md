GCP Infrastructure Project – NexEdge Final Exercise

This repository documents the setup of a web application infrastructure on Google Cloud Platform (GCP) using Terraform as Infrastructure as Code (IaC). The goal was to demonstrate hands-on knowledge of GCP resources, IAM roles, and automation using Terraform.

### Tasks Completed:

- Created a new organizational structure on GCP (folders, subfolders for departments and teams)
- Built a custom VPC with two subnets in different regions using Terraform
- Set firewall rules to allow HTTP, HTTPS, and SSH traffic
- Provisioned two VM instances using Terraform, each located in a different subnet
- Assigned IAM roles through the GCP console (Compute Admin and Network Admin)
- Created a Cloud SQL instance (MySQL), added a database, and inserted sample data
- Deployed a standard Kubernetes cluster using Terraform
- Accessed a VM via SSH to:
  - Run basic Linux commands
  - Create five folders and text files
  - Add content to the files
  - Deploy a simple Python Flask app

This README provides a clear overview of the project setup for future reference or handover. The infrastructure was fully deployed using Terraform, and all progress is tracked through GitHub for transparency and version control.