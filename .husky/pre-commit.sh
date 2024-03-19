#!/bin/sh

# Run linting
npm run lint

# Run code formatting
npm run format

# Add changes to staging area
git add .