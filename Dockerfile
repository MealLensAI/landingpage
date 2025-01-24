# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the landing page files into the Nginx HTML directory
COPY landingpage/index.html ./
COPY landingpage/README.md ./
COPY landingpage/assets/ ./assets/
COPY landingpage/css/ ./css/
COPY landingpage/js/ ./js/
COPY landingpage/ai_response.html ./
COPY landingpage/detect_food.html ./
# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
