# Use Node.js official image as a base
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the port
EXPOSE 8080

# Run the application
CMD ["node", "node.js"]
