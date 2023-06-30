# Use a base image
FROM nginx:alpine

# Copy the HTML files to the container
COPY index.html /usr/share/nginx/html

# Expose the port for web traffic
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]