# python2docker
It is a python2 docker with dlib, opencv and matlibplot

## Build

`docker build . -t python2docker:latest`

## Run

Suppose your project folder is `/path/to/project`

Use this command to run it with an interactive shell and your local project folder mounted as `/project` inside the image file system:

`docker run -ti -v /path/to/project:/project --name py2docker python2docker:latest sh`

From the shell go to the `/project` folder and run your program.

When done, type `exit` and remember to remove the image with `docker rm py2docker`.

