# ENV [![Build Status](https://travis-ci.org/melvinlee/env.svg?branch=master)](https://travis-ci.org/melvinlee/env)

My developer toolbox put into a Docker image so that I can run anywhere.

## Usage

```sh
$ docker run -it -v $PWD:/home/melvinlee melvinlee/env
```

## Build

Runtime/tools can be opt out during docker build. Simply comment out the feature in Dockerfile.

```yml
RUN .install/serverless.sh
RUN .install/pip.sh
#RUN .install/awscli.sh 'Remove this 
RUN .install/httpie.sh
```

Rebuild the Docker image

```sh
$ docker build --rm -t env .
```