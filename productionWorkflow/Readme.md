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

# Build containers

    $ docker build -f Dockerfile.dev -t .
