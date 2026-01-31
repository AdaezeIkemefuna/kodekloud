# Day 1 - Kubernetes Task

## Task

Create pod `pod-httpd` with image `httpd:latest`, label `app=httpd_app`, container name `httpd-container`.

## Solution

```bash
cat << EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
    - name: httpd-container
      image: httpd:latest
EOF
```

## Verification

```bash
kubectl get pods --show-labels
```
