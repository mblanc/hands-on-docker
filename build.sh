#!/bin/sh

docker build -t mblanc/mongo ./mongo/
docker build -t mblanc/express-todo-example ./express-todo-example/