# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# If you're building production, you can use:
# RUN npm ci --only=production

# Copy the rest of the application files to the container
COPY . .

# Expose the application port (if your app runs on port 3000)
EXPOSE 8080

# Define the command to start your application
CMD ["npm", "start"]
