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

# Set Git hooks path to .git/hooks
RUN git config --local core.hooksPath .git/hooks

# Expose port, adjust based on your project requirements
EXPOSE 5575

# Build Storybook
RUN npm run build-storybook

# Install react-refresh
RUN npm install -D react-refresh@0.11.0

# Install http-server globally
RUN npm install -g http-server

# Run http-server with port 5575
CMD ["http-server", "build", "-p", "5575"]
