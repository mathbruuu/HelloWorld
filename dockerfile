# Use an official Nginx runtime as a base image
FROM nginx:latest

# Copy the local index.html file to the default Nginx document root
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
