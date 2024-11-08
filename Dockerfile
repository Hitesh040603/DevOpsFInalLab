# Use an appropriate base image (e.g., NGINX for serving static content)
FROM nginx:latest

# Copy the app files to the container
COPY ./index.html /usr/share/nginx/html/index.html

# Set environment-specific configurations if needed
# For example, use ARG to pass environment variables
ARG ENVIRONMENT=production
ENV ENVIRONMENT=$ENVIRONMENT

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
