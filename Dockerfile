# # Use official Node.js 14 image as the base image
# FROM node:20.11.1

# # Set the working directory
# WORKDIR /usr/src/app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# # Install project dependencies
# RUN npm install

# # Copy project files to the working directory
# COPY . .

# # Add Husky package with version limited to 4.3.8
# RUN npm install husky@4.3.8 --save-dev

# # Set Git hooks path to .git/hooks
# RUN git config --local core.hooksPath .git/hooks

# RUN npm run build

# # Expose port, adjust based on your project requirements
# EXPOSE 5575

# # Install react-refresh
# RUN npm install -D react-refresh@0.11.0

# # Install http-server globally
# RUN npm install -g http-server

# # Run http-server with port 5575
# CMD ["http-server", "build", "-p", "5575"]

# Use an official Node runtime as a parent image
FROM node:14-alpine as build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React app
RUN npm run build

# Use a lighter image for serving the built app
FROM node:14-alpine

# Install http-server globally

RUN npm install -g http-server

RUN npm install husky@4.3.8 --save-dev

RUN npm install -D react-refresh@0.11.0

# Set the working directory
WORKDIR /usr/src/app

# Copy the built app from the previous stage
COPY --from=build /usr/src/app/build /usr/src/app/build

# Expose port 5575 to the outside world
EXPOSE 5575

# Command to run http-server and serve the built app
CMD ["http-server", "build", "-p", "5575", "-c-1"]

