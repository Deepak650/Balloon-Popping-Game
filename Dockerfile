# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx website
RUN rm -rf ./*

# Copy the HTML, JS, and other static files into the container
COPY . .

# Expose port 80 to make the web app accessible
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
