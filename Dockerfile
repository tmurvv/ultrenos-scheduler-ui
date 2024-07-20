# Use the official Node.js image as the base image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Build the React app
RUN npm run build

# Expose the port on which the app will run (adjust if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "run", "preview"]
