# Use the official Node.js image as a parent image
FROM node:18.18.2

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install the application's dependencies inside the container
RUN yarn install

# Copy the rest of the application's files to the container
COPY . .

# Specify the command to run when the container starts
CMD ["yarn", "start"]
