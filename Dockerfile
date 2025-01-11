# Use an official Nginx image as a base
FROM nginx:latest

# Copy your HTML files (or other web assets) to the appropriate directory in the container
COPY . .

# Expose the port the container will listen on
EXPOSE 80

# Run Nginx in the foreground (default for the Nginx image)
CMD ["nginx", "-g", "daemon off;"]