FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy only the package.json (and optionally package-lock.json) for dependency installation
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]
