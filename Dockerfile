# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx HTML files (optional but cleaner)
RUN rm -rf /usr/share/nginx/html/*

# Copy your local HTML files into Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80 (optional if you're running this with Docker run -p)
EXPOSE 80
