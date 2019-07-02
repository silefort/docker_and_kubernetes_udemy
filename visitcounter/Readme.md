# visits counter

## Architecture

```
    [     Node App    ][     Node App    ][     Node App    ]
                       [ Redis visits=10 ]
```

# Build the Node Image

    $ docker build -t visitscounter .

# Run both images

    $ docker run visitscounter
    $ docker run redis

# Docker compose

Used to start up multiple Docker containers at the same time
Automates ome of the long-winded arguments we were passing to 'docker run'

    $ docker-compose up # equivalent to docker run
    $ docker-compose up --build # equivalent to docker build then docker run
    $ docker-compose up -d # Launch containers in background
    $ docker-compose down # Stop all containers
    $ docker-compose ps

# Restart Policy:

    No: never restart
    always: always restart (for any reason)
    on-failure: restart only if exit code > 0
    unless-stopped: always restart unless purposely stopped
