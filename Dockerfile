# Use an official Alpine image as the base
FROM hashicorp/terraform:latest

# Set environment variables for AWS credentials (optional - for local testing)
# In production, you should use GitHub Actions secrets or IAM roles to provide credentials
# ENV AWS_ACCESS_KEY_ID=<your-access-key-id>
# ENV AWS_SECRET_ACCESS_KEY=<your-secret-access-key>
# ENV AWS_DEFAULT_REGION=us-east-1

# Install AWS CLI for interacting with AWS services
# RUN apk add --no-cache \
#     bash \
#     curl \
#     unzip \
#     && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
#     && unzip awscliv2.zip \
#     && sudo ./aws/install \
#     && rm -rf awscliv2.zip

# Set up the working directory inside the container
WORKDIR /app

# Copy your Terraform configuration files (including .tf files)
COPY . /app


# Initialize Terraform configuration
RUN terraform init


