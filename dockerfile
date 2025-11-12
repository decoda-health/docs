# Use a Node.js base image
FROM node:lts-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the Mintlify site (if needed as a static build)
# Note: 'mintlify dev' runs a server, if you want a static site, you might use 'mintlify build' 
# and serve the static files, but for Cloud Run, running the server is easier.
# Mintlify documentation suggests 'mintlify dev' for local preview, so we'll use a similar server command.

# Expose the port that Cloud Run will use (must be 8080)
ENV PORT 8080
EXPOSE 8080

# Command to run the application
# This command starts the Mintlify development server, which serves the docs
CMD [ "npx", "mintlify", "dev", "--port", "8080" ]
