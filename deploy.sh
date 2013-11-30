#!/bin/sh

docker run -d -name mongo mblanc/mongo --noprealloc --smallfiles
docker run -d -link mongo:mongo -p 80:8080 mblanc/express-todo-example
