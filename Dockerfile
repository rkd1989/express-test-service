# Dockerfile for User Service
# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code into the container
COPY . .

# Expose the port that the User Service will run on
EXPOSE 5000

# Start the User Service
CMD ["node", "index.js"]
