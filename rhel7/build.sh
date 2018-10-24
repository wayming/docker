docker build -t wayming/rhel7 .

docker push wayming/rhel7

docker ps | grep rhel7 | awk '{print $1}'  | xargs -I {} docker kill {} 

docker rm rhel7

docker run -t -d --name rhel7 wayming/rhel7

docker ps