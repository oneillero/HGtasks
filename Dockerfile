# Use the official lightweight Node.js 14 image.
FROM node:14-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

# Copy the local code to the container's workspace.
COPY . .

# Expose port 3000 to the outside
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
