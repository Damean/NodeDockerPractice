# Node.js + Docker example project

## Build
```
docker build -t xxdameanxx/nodedockerexample .
```

## Run
```
docker run -d -p 8000:3000 --name nodedockerexample xxdameanxx/nodedockerexample
```

## Mounting windows folders as volumes

```
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
```
