alias flask="docker run -it --rm --env-file $(pwd)/.env --volume $(pwd):/opt/app -p 5000:5000 flaskdocker_flask flask"
