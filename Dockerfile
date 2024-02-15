# Use a lightweight base image
FROM nginx:alpine

# Copy HTML file into the nginx web server directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80
