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

# Build the React app
RUN npm run build

# Build Storybook and output it to a separate directory
RUN npm run build-storybook --output-dir .storybook-static

# Expose port, adjust based on your project requirements
EXPOSE 5575

# Install http-server globally
RUN npm install -g http-server

# Run http-server with port 5575, serving the React app's build directory
CMD ["http-server", "--www", "build", "--p", "5575"]