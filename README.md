#Node.js + Docker example project

##Build
```
docker build -t xxdameanxx/nodedockerexample .
```

##Run
```
docker run -d -p 8000:3000 --name nodedockerexample xxdameanxx/nodedockerexample
```