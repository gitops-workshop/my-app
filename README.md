# My App

Build:

```
GOOS=linux GOARCH=amd64 go build .
docker build -t my-app:v1 .
```

Run:

```
docker run -e GREETING=Howdy my-app:v1
```

### Release:

```
docker tag my-app:v3 alexcollinsintuit/my-app:v1
docker push alexcollinsintuit/my-app:v1
```

### Clean Up

```
docker rmi my-app:v1
```
