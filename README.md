# grails-dev-env

## Usage

### Build

```
$ docker build -t grails .
```

`grails` is docker image name.

### Run

```
$ docker run -it -v "$PWD/grails_app":/usr/src/grails_app -p 8080:8080 grails
```

`http://localhost:8080/`

### Open grails console

```
$ docker exec -it {CONTAINER_ID} /root/.sdkman/candidates/grails/current/bin/grails
```
To confirm `CONTAINER_ID`, you will type command `$ docker ps` on terminal.
