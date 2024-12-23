# Use the official Nginx base image
FROM nginx:latest

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir /usr/myfiles
COPY index.html /usr/myfiles

# Expose port 80 to allow incoming traffic
EXPOSE 80
