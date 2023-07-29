# the following are a bunch of important commands related to pods.
```
kubectl describe pod webapp
```

```
kubectl exec webapp ls
```

Entering into the command line in the web app.
```
kubectl exec -it webapp sh
```

## Note

If you are using the Kubernetes that ships with Docker Desktop, then you just use "localhost" or "127.0.0.1" as the address. Don't forget the port number of your NodePort. so "127.0.0.1:30080" should work for the webapp.

Sometimes with docker desktop , localhost doesn't work and you will need the following command:

```
kubectl port-forward svc/fleetman-webapp 30080:80
```

You now need to leave this process running - you will need to continue your work in another terminal/command prompt.

The following is the kubectl api to get pods filter by labels.
```
 kubectl get pods --show-labels -l release=0-5
```