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

# User Travis CI

```
[ Tell travis we need a copy of docker running ]
[ Build our imageusing Dockerfile.dev ]
[ Tell Travis how to run our test suite ]
[ Tell Travis how to deploy our code to AWS ]
```

# Use Elastic Beanstalk

Elastic Beanstalk uses what has been uploaded on an S3 bucket to build and run a container


```
[     Load Balancer    ]
[----------------------]
[   VM Running Docker  ]
[                      ]
[ [------------------] ]
[ [ Docker Container ] ]
[ [                  ] ]
[ [ [-------------]  ] ]
[ [ [  Deployment ]  ] ]
[ [ [-------------]  ] ]
[ [                  ] ]
[ [------------------] ]
[                      ]
[                      ]
[----------------------]
```

# The Fibonnaci Sequence

1 1 2 3 5 8 13 21 

n=(n-2)+(n-1)

The Postgres Database will be used to show "permanent" data
The Redis will be used to show "temporary" data


