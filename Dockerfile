# Use an official Node runtime as a parent image
FROM node:20

# Set the working directory in the container to /app
WORKDIR /app

# Set folder all permissions to the folder
RUN chmod -R 755 /app

# Copy package.json
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy all local files into the image
COPY . .

# Expose the port your app runs on
EXPOSE 30025

# Define the command to run your app
CMD ["npm", "run", "dev"]
