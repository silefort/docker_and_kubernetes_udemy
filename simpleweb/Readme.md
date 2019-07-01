
# Node js

    $ npm install # Install dependencies
    $ npm start # Start the node server

# Build the Node Image

    $ docker build -t simpleweb .

# Run the container

    $ docker run -p 8080:8080 simpleweb

# Shell into container

    $ docker run -p 8080:8080 simpleweb sh

# Shell into container

    $ docker exec -ti simpleweb sh
