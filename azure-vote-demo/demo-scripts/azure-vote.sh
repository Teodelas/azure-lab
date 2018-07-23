az login

az vm start -g Azure_Demos -n centosvm

ssh teodelas@teolinuxvm.eastus.cloudapp.azure.com
#on centosvm:
sudo systemctl start docker
cd azure-lab
git pull

#Demo simple python app
cd Docker
docker build . -t simpleapp
#Flask default port is 5000
docker run -p 5000:5000 -d
#Verify that the python app is working
curl http://teolinuxvm.eastus.cloudapp.azure.com:5000

#put the app in a repo
docker login
docker tag 440f5043522b docker.io/teodelas/simpleapp
docker push docker.io/teodelas/simpleapp

cd azure-vote-demo 
docker build -t azure-vote:v2 .
docker images

#Deploy the full stack
docker-compose up -d

#cleanup
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)


