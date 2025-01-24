# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d

# Set the working directory
WORKDIR /usr/share/nginx/html
# Copy the landing page files into the Nginx HTML directory
COPY @landingpage/index.html ./
COPY @landingpage/README.md ./
COPY @landingpage/assets/ ./assets/
COPY @landingpage/ai_response.html ./

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]