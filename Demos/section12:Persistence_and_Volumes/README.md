# Section 12: Kubernetes Persistence and Volumes

- what can the volume be connected to?
    - A network hard drive, like AWS EBS(elastic block store)
    - A hard disk on the host.

- Release2 images for the deployment position-tracker can only store the data in memory, thus can result in data loss if the pod dies or restarts.
- The way to persist data is to use a Mongo Pod to store vehicle’s route history.

In the [source code](https://github.com/yuchenOutlook/k8s-fleetman/blob/51c664c2fcacf398e16214d3d88f5cc80d6aa36e/microservice-source-code/release3/k8s-fleetman-position-tracker/src/main/resources/application-production-microservice.properties), the [spring.data.mongodb.hos](http://spring.data.mongodb.host)t specifies where the mongdb should locate for the production environment.

> in the mongo-stack.yaml, the name of the service part in metadata section is really important, cause it should map with the name in the source code in [here](https://github.com/yuchenOutlook/k8s-fleetman/blob/master/microservice-source-code/release3/k8s-fleetman-position-tracker/src/main/resources/application-production-microservice.properties)
> 

```yaml
kind: Service
apiVersion: v1
metadata:
  name: ***fleetman-mongodb***
spec:
  selector:
    app: mongodb
  ports:
    - name: mongoport
      port: 27017
  type: ClusterIP
```

Should be mapping with this part in source code:

```java
spring.data.mongodb.host=***fleetman-mongodb***.default.svc.cluster.local
```

Now we have a mongodb pod running, how to persist data?

- Persistent Volume Claims and Persistent Volume
    
    See Example code in section12 in storage.yaml file.
    
    - PVC
        - It’s telling the cluster what we need
    - PV
        - It’s telling the cluster what kind of hardware are you going to pick/implement the needs

- Storage Class
    - A storage class allows the cloud admin to setup different classes of storage.
        - For example, the cloud admin might have 2 different set of hard disks, one kind is magnetic hardware which is slower, and the other set of hard disks are SSD which are faster.
    - From the example script I had, explained by ChatGpt:
        
        Script Overview:
        
        ```yaml
        apiVersion: v1
        kind: PersistentVolumeClaim
        metadata:
          name: mongo-pvc
        spec:
          storageClassName: local-storage
          accessModes:
            - ReadWriteOnce
          resources:
            requests:
              storage: 20Gi
        
        ```
        
        **Breakdown:**
        
        - **PersistentVolumeClaim (PVC)**: A PVC is a request for storage. It's a way for a user to ask for a specific amount and type of storage in Kubernetes, without needing to know the details of the underlying storage infrastructure.
        - **storageClassName**: This indicates which "StorageClass" the PVC should use. A StorageClass provides a way to describe the "classes" of storage offered. Different StorageClasses might map to quality-of-service levels, backup policies, or cluster-specific characteristics.
        - **accessModes**: Describes the accessibility of the data. In this case, `ReadWriteOnce` means the volume can be mounted as read-write by a single node.
        - **resources.requests.storage**: This is the amount of storage being requested in the PVC.
        
        **Simple Explanation with an Example**:
        
        Imagine you're in a library. You want a specific type of book, let's say a "Fiction" book, but you don't care about which specific fiction book you get. You fill out a request form (the PVC) asking for a "Fiction" book.
        
        - The **storageClassName** is like specifying the category (e.g., "Fiction") of the book you want.
        - The library has different sections (like **StorageClasses** in K8s) such as "Fiction", "Non-Fiction", "Reference", etc.
        - **accessModes** is like specifying if you want to borrow the book for reading alone or if you're okay with sharing it with others.
        - The **resources.requests.storage** is like specifying how many books you want to borrow.
        
        Once you submit your request form, the library tries to find a book that matches your request from its available stock. In Kubernetes, this act of finding an appropriate storage volume to fulfill a PVC's request is called **binding**.
        
        So, in simple terms, when you submit a PVC, Kubernetes tries to find a matching Persistent Volume (PV) that fits the request and binds them together. The "StorageClass" acts as the criteria to guide this matching process.
        
    

```bash
k get pvc
```

```bash
k get pv
```