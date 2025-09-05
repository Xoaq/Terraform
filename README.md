# terraform-modules

This repository contains reusable Terraform modules for automating AWS infrastructure components. These modules are designed to be used as building blocks in larger Terraform projects, such as the [rentzone-infrastructure-ecs-main](../rentzone-infrastructure-ecs-main/README.md) project.

## Available Modules

- **vpc/**  
  Provisions a VPC, public/private subnets, route tables, and an internet gateway.
- **nat-gateway/**  
  Creates NAT gateways and configures routing for private subnets.
- **security-groups/**  
  Defines security groups for ALB, bastion hosts, application servers, and databases.
- **rds/**  
  Launches RDS instances and subnet groups, optionally from a snapshot.
- **acm/**  
  Requests and validates ACM SSL certificates using DNS validation.
- **alb/**  
  Sets up an Application Load Balancer, listeners, and target groups.
- **s3/**  
  Creates S3 buckets and uploads environment files.
- **iam-role/**  
  Configures IAM roles and policies for ECS task execution.
- **ecs/**  
  Provisions ECS clusters, task definitions, and services.
- **asg-ecs/**  
  Implements ECS service auto scaling policies.
- **route-53/**  
  Manages Route 53 DNS records for domain and load balancer integration.

## Usage

Each module is self-contained and can be integrated into your Terraform root configuration using the `module` block.  
Example usage:

```hcl
module "vpc" {
  source       = "git@github.com:Xoaq/terraform-modules.git//vpc"
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
  # ...other variables...
}
Refer to each module's variables.tf and outputs.tf for input and output details.

Best Practices
Use these modules as dependencies in your main Terraform project.
Do not store sensitive data or state files in this repository.
Follow versioning and tagging for module stability.
License
This repository is intended for internal use. Please refer to your organization's licensing policies. `````
