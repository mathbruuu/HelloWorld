# Use an official Nginx runtime as a base image
FROM nginx:latest

# Create a simple index.html file with "<h1>Hello World</h1>" content
RUN echo '<h1>Hello World</h1>' > /usr/share/nginx/html/index.html

# Install curl
RUN apt-get update && apt-get install -y curl

# Expose port 80 to the outside world
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
