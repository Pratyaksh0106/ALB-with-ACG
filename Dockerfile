# Use an official Alpine image as the base
FROM hashicorp/terraform:latest

WORKDIR /app

# Copy your Terraform configuration files (including .tf files)
COPY . /app


# Initialize Terraform configuration
RUN terraform init


