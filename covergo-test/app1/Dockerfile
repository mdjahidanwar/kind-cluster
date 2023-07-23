# Use the official Node.js LTS (Long Term Support) image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application files to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that the HTTP server will listen on
EXPOSE 8282

# Define the command to run your HTTP application (replace  with the appropriate command for your app)
CMD ["npm", "start"]
