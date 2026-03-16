# Use base image
FROM nginx:latest

# Copy files from local machine to container
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start nginx 
CMD ["nginx", "-g", "daemon off;"]