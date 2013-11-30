#!/bin/sh

docker run -d -name mongo mblanc/mongo
docker run -d -link mongo:mongo mblanc/express-todo-template