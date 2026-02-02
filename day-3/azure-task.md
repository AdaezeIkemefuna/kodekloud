# Day 3 - Azure Task

## Task Description

a VM must always be created in a resource group, right?
The Nautilus DevOps team is in the process of migrating some of their workloads to Azure. One of the tasks involves creating a new Virtual Machine (VM) using the Azure CLI. The team does not have access to the Azure portal but can manage Azure resources via the `azure-client` host (the landing host for this lab).

1. Create a new Azure Virtual Machine named `datacenter-vm` using the Azure CLI.
2. Use the `Ubuntu2204` image and set the VM size to `Standard_B2s`.
3. Make sure the admin username is set to `azureuser` and SSH keys are generated for secure access.
4. Use `Standard_LRS` storage account, disk size must be `30GB` and ensure the VM `datacenter-vm` is in the `running` state after creation.

> **Resource Group:** > **Location:** > **Credentials:** Run `showcreds` on azure-client

---

## Solution

### Method Used

- [ ] Azure CLI

### Commands / Steps

```bash
# get the resource group name
az group list

# create vm
az vm create \
  --resource-group <resource-group-name> \
  --name datacenter-vm \
  --image Ubuntu2204 \
  --size Standard_B2s \
  --admin-username azureuser \
  --generate-ssh-keys \
  --storage-sku Standard_LRS \
  --os-disk-size-gb 30
```

---

## Verification

```bash
az vm show --resource-group <resource-group-name> --name datacenter-vm --show-details --query "powerState"
```

---

## Notes & Learnings

- ***

## References

- [Azure CLI Reference](https://docs.microsoft.com/en-us/cli/azure/)
