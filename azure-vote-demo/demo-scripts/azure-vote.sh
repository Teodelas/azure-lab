az login

az vm start -g Azure_Demos -n centosvm

ssh teodelas@teolinuxvm.eastus.cloudapp.azure.com
#on centosvm:
sudo systemctl start docker
cd azure-lab
git pull
cd azure-vote-demo 
docker build . 

