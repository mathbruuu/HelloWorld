# Use an official Nginx runtime as a base image
FROM nginx:latest

# Create a simple index.html
UN echo '<h1>Hello World</h1>' > /usr/share/nginx/html/index.html

# Install curl
RUN apt-get update && apt-get install -y curl

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
