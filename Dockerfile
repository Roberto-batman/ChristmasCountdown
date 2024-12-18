FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies, including nodemon
RUN npm install

# Copy the rest of the application
COPY . .

<<<<<<< HEAD
# Expose the port your app listens on...w1027.
=======
# Expose the port your app listens on...
>>>>>>> 7f3c16eb43e0cf3d91e9d0f686a6bb70433ad32a
EXPOSE 8080

# Use nodemon to start the application
CMD ["npx", "nodemon", "index.js"]
