# Day 1 - Azure Task

## Task
Create an SSH key pair with:
- Name: `datacenter-kp`
- Type: RSA

## Solution
```bash
az sshkey create --name datacenter-kp --resource-group kml_rg_main-69e7b9f546e146c3 --location westus
```

## Notes
- RSA is the default key type in Azure
- Private key must be saved immediately after creation
