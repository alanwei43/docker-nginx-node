docker run -P -d --name nginx-node-test nginx-node:0.0.1
docker exec -i -t nginx-node-test bash
# docker run --rm -it --name nginx-node-test nginx-node:0.0.1 bash