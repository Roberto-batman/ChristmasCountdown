FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies, including nodemon
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port your app listens on - www14
EXPOSE 8080

# Use nodemon to start the application
CMD ["npx", "nodemon", "index.js"]