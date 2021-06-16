docker build -t apozzoli/multi-client:latest -t apozzoli/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t apozzoli/multi-server:latest -t apozzoli/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t apozzoli/multi-worker:latest -t apozzoli/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push apozzoli/multi-client:latest 
docker push apozzoli/multi-server:latest 
docker push apozzoli/multi-worker:latest

docker push apozzoli/multi-client:$SHA 
docker push apozzoli/multi-server:$SHA 
docker push apozzoli/multi-worker:$SHA

# kubectl apply -f k8s
# kubectl set image deployments/server-deployment server=apozzoli/multi-server:$SHA
# kubectl set image deployments/client-deployment client=apozzoli/multi-client:$SHA
# kubectl set image deployments/worker-deployment worker=apozzoli/multi-worker:$SHA