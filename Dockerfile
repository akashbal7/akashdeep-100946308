# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install production dependencies
RUN npm install --only=production

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run your application
CMD ["node", "src/index.js"]
