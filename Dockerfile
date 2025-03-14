
# Since we are using nodejs, we will use the node image as the base image
FROM node

# Set the working directory
WORKDIR /app

# Copy the package.json file to the working directory
COPY package.json .

# Install the dependencies
RUN npm install

# Copy the rest of the files to the working directory
# NOTE: if we dont need every file from the working directory, we can specify the files we need
# That way we can avoid copying unnecessary files to the image and save space
COPY . .

# Expose the port that the app will run on
# Its crucial to let the container know which port it will communicate through
EXPOSE 3000

# And finally, run the app
CMD ["node", "app.mjs"]