# debugger

A container image with tools and utilities for debugging services in the k8s world


### Build and publish
All the necessary files for building the container image are in the `image` directory.
- The Dockerfile describes which tools are installed in the image;
- The convenience script `build.sh` builds the container and publish it.


### Usage
The debugger container is described via 2 YAML files:
- `k8s/deployment.yaml`, to deploy the container on one node only;
- `k8s/daemonset.yaml`, to deploy the container on all the nodes of the cluster.

If the provided defaults are satisfactory, the container can be deployed with:
```
kubectl apply -f https://raw.githubusercontent.com/sciencebox/debugger/master/k8s/deployment.yaml
```

In case some changes must be applied to the configuration before deploying, please clone this repository and edit the YAML files:
```
git clone https://github.com/sciencebox/debugger.git
# Apply your changes to k8s/deployment.yaml
kubectl apply -f k8s/deployment.yaml
```


### Defaults
The debugger container:
- Runs in privileged mode and privilege escalation is allowed;
- Uses the host PID space and IPC;
- Uses the hostNetwork;
- Mounts `/` of the host at `/host_root`.
