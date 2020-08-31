#!/bin/zsh
docker rm --force nginx
docker run -p 8001:80 --name nginx --network schleising-net -v /Users/steve/Documents/Coding/Python/website/mainsite/:/code/ nginx-image
