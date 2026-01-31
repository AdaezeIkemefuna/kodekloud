# Day 1 - AWS Task

## Task

Create a key pair named `datacenter-kp` with type `rsa`.

## Solution

```bash
aws ec2 create-key-pair --key-name datacenter-kp --key-type rsa
```

## Verification

```bash
aws ec2 describe-key-pairs --key-names datacenter-kp
```
