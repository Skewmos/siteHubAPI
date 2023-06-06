# Use the official Node.js 18 image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY app/package*.json app/yarn.lock ./


# Install dependencies
RUN yarn install --frozen-lockfile --production=false

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the NestJS application
CMD [ "yarn", "start" ]