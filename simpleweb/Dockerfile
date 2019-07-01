# Specify a base image
FROM node:alpine

# Create /usr/app if it doesn't exists
WORKDIR /usr/app

# Install some dependencies ( made in 2 steps to avoid to run npm install everytime the source code is changed)
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
