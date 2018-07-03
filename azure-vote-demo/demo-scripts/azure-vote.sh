az login

az vm start -g Azure_Demos -n centosvm

ssh teodelas@teolinuxvm.eastus.cloudapp.azure.com
#on centosvm:
sudo systemctl start docker
cd azure-lab
git pull

#Demo simple python app
cd Docker
docker build 
docker build . -t simpleapp
#Flask default port is 5000
docker run -p 5000:5000 -d

cd azure-vote-demo 
docker build -t azure-vote:v2 .
docker images
docker run -p 80:80 -d azure-vote:v2
docker ps
#Verify that the python app is working
curl 

#Deploy the full stack
docker-compose up -d

#cleanup
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)


