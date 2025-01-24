# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Set the working directory
WORKDIR /app


# Copy the rest of the application code into the container
COPY . /app/


# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
