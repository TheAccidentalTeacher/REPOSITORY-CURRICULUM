#!/bin/bash

# Build script for Netlify deployment
echo "Building curriculum website..."

# Create public directory if it doesn't exist
mkdir -p public

# Copy all files from CURRICULUM REPOSITORY to public
cp -r "CURRICULUM REPOSITORY"/* public/

echo "Build complete! Files are ready in the public directory."
