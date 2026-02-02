# Day 3 - Kubernetes Task

## Task Description

The Nautilus DevOps team is planning to deploy some micro services on Kubernetes platform. The team has already set up a Kubernetes cluster and now they want to set up some namespaces, deployments etc. Based on the current requirements, the team has shared some details as below:
Create a namespace named `dev` and deploy a POD within it. Name the pod `dev-nginx-pod` and use the `nginx` image with the `latest` tag. Ensure to specify the tag as `nginx:latest`.
`Note:` The `kubectl` utility on `jump_host` is configured to operate with the Kubernetes cluster.

> **Cluster:** > **Namespace:** > **Context:**

---

## Solution

### Method Used

- [ ] kubectl commands

### Commands / Manifests

```bash
# Create namespace
kubectl create namespace dev

# Create pod in the namespace
kubectl run dev-nginx-pod --image=nginx:latest -n dev
```

---

## Verification

```bash
kubectl get pods -n dev
```

---

## Notes & Learnings

- ***

## References

- [Kubernetes Docs](https://kubernetes.io/docs/)
- [kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
