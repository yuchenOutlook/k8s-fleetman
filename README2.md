# Section 5. Run the angular app container
#### 1. first step pull the docker image(this is for mac M1 and M2 chips users)
```
docker pull richardchesterwood/k8s-fleetman-webapp-angular:release0-5-arm64
```
```
docker image ls
```

```
docker run -p 8080:80 -d richardchesterwood/k8s-fletman-webapp-angular:release0-5-arm64
```
```
docker run -p 8080:80 -d richardchesterwood/k8s-fleetman-webapp-angular:release0-5-arm64
```
 Now go to your localhost and port 8080: http://127.0.0.1:8080/
#### There you go, now you have a running angular app container!