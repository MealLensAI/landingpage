# Use an official Nginx image
FROM nginx:alpine

# Copy HTML files into Nginx's default directory
COPY website/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
