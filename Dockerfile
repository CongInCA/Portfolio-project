# Use an official Node runtime as a parent image
# FROM node:20.11.1

# Set the working directory in the container
# WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# Install dependencies
# RUN npm install

# Copy the rest of the application code to the working directory
# COPY . .

# RUN npm run rollup

# RUN npm run build-storybook

# RUN npm install -g http-server

# CMD ["http-server", "storybook-static", "-p 8083"]

# FROM node:20.11.1

# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# RUN npm install --save-dev husky prettier eslint

# RUN npx husky install

# RUN npx husky add .husky/pre-commit "npm run format && npm run lint"

# EXPOSE 8018

# CMD ["npm", "start"]
# Use official Node.js 14 image as the base image
FROM node:20.11.1

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy project files to the working directory
COPY . .

# Add Husky package with version limited to 4.3.8
RUN npm install husky@4.3.8 --save-dev

# Configure Husky pre-commit hook
RUN npx husky install

# Set Git hooks path to .git/hooks
RUN git config --local core.hooksPath .git/hooks

# Expose port, adjust based on your project requirements
EXPOSE 8018

# Run the application
CMD ["npm", "start"]

# Define the command to run your application
# CMD ["npm", "start"]

# Additional instructions based on feedback
# Include build and run commands
# Note: Adjust the actual build and run commands based on your project structure and requirements
# e.g., If you use Storybook, include relevant commands here

# Run command example (replace with your actual run command)