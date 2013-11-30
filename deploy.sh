#!/bin/sh

docker run -d -name mongo mblanc/mongo --noprealloc --smallfiles
docker run -d -link mongo:mongo mblanc/express-todo-example
