FROM node:latest

#windows directory structure inside the mounted folder
WORKDIR /docker-workspace/NodeDockerPractice

ENV PORT=3000

#copying package.json and package.lock.json to install dependencies on the VM first
#COPY ./package*.json ./
#RUN npm install

COPY . .

RUN npm install

EXPOSE $PORT

#CMD [ "sleep", "3600" ]

ENTRYPOINT [ "npm", "run", "start" ]


#Instructions to use docker volumes on windows when using docker-toolbox

#1.   docker-machine stop default
#2.   Open the Command Line from the start menu (search for cmd.exe)
#3.   cd C:/Program Files/Oracle/VirtualBox
#4.   VBoxManage.exe sharedfolder add default --name "h/work" --hostpath "\\?\h:\work" --automount
#4.1  Notes: keep in mind that h/work is equal to drive H:/work
#5.   VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root 1
#6.   VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/h/work 1
#6.1  Notes: /h/work 1 refers to drive H:/work
#7    Open "Docker Quickstart Terminal"
#8    docker-machine ssh default
#9    sudo mkdir --parents /h/work
#9.1  Notes: /h/work makes reference to drive H:/work
#10   sudo mount -t vboxsf h/work /h/work/
#10.1 Notes: /h/work makes reference to drive H:/work
#11   exit
