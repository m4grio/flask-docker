# A flask in the dock
Just an experiment for me to understand Python better

## Installation

1. Build the container using docker-compose
```shell
$ docker-compose build
...
Successfully built a6b866b88ebe
Successfully tagged flaskdocker_flask:latest
```

2. Source the alias
```shell
$ flask --version # To confirm that flask is not installed locally
zsh: command not found: flask
$ source .profile
$ which flask
flask: aliased to docker run -it --rm --env-file /home/user/flask-docker/.env --volume /home/user/flask-docker:/opt/app -p 5000:5000 flaskdocker_flask flask
$
$ flask --version
Flask 0.12.2
Python 2.7.13 (default, Apr 20 2017, 12:13:37)
[GCC 6.3.0]
```

## Usage
```shell
$ flask run
 * Serving Flask app "app"
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
```

## Author
- Mario Álvarez <ahoy@m4grio.me>
