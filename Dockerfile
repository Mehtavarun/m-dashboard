# Use a tiny web server
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your local HTML/CSS files to the container
COPY . /usr/share/nginx/html

# Nginx starts automatically on port 80