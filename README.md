# A flask in the dock
Just an experiment for me to understand Python better

## Installation

1.
```shell
$ make install
...
Successfully built a6b866b88ebe
Successfully tagged flaskdocker_flask:latest
```

## Usage

Just use `flask` as you normally do.

### Configuration

The script that invokes Flask within the container will look for a file called `.env` in the same path you execute Flask in. Refer to the [example](https://github.com/m4grio/flask-docker/tree/master/example).

```shell
$ ls -a
.      ..     .env   app.py
$ flask run
 * Serving Flask app "app"
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
```

```shell
$ curl 0.0.0.0:5000
Hello, Cat!
```

## Author
- Written by Mario Álvarez <ahoy@m4grio.me>
