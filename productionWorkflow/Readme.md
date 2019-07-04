# Workflow

```
[ Development ]
[   Testing   ]
[  Deployment ]
```

```
[ feature ] --> [ master ] -> [TravisCI ] -> [ AWS Hosting ]
```

## Create react app

    $ npm install -g create-react-app
    $ create-react-app frontend

    $ npm run start # Starts up a development server (for development user only )
    $ npm run test  # Runs tests associated with the projets
    $ npm run build # Builds a production version of the application

# Build a dev container

    $ docker build -f Dockerfile.dev -t dev .

This container will have the necessary files (html, js) + a Dev webServer to serve the content

# Run dev container

    $ docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app dev # /app/node_modules make sure that /app/node_modules can't be changed from outside of the container

# User docker-compose

    $ docker-compose up --build 

# Execute tests

    $ docker run -ti dev npm run test
    $ docker exec -ti dev npm run test

# Build and run a production Setup

## Multi-Step Docker Builds:

### Build Phase:
* Use node:alpine
* Copy the package.json file
* Install dependencies
* Run 'npm run build'

### Run Phase
* Use nginx
* Copy over the result of 'npm run build'
* Start nginx

# Run Production container

    $ docker run -p 8080:80 production
