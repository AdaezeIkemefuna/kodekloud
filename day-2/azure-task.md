# Day 2 - Azure Task

## Task Description

The Nautilus DevOps team is planning to migrate a portion of their infrastructure to the Azure cloud incrementally. As part of this migration, you are tasked with creating an Azure Virtual Machine (VM).

The requirements are:

1. Use the existing resource group.

2. The VM name must be datacenter-vm, it should be in eastus region.

3. Use the Ubuntu 22.04 LTS image for the VM.

4. The VM size must be Standard_B1s.

5. Attach a default Network Security Group (NSG) that allows inbound SSH (port 22).

6. Attach a 30 GB storage disk of type Standard HDD.

7. The rest of the configurations should remain as default.

After completing these steps, make sure you can SSH into the virtual machine.

> **Resource Group:** Run `az group list` on azure-client to see the name of the existing resource group(kml_rg_main-5d2252f75ac945a8)
> **Location:** eastus
> **Credentials:** Run `showcreds` on azure-client

---

## Objective

<!-- Summarize what needs to be done in your own words -->

---

## Solution

### Method Used

- [ ] Azure CLI

### Commands / Steps

```bash
# login with credentials provided
az login

#Run the create command with all the requested parameters as shown below
az vm create \
  --resource-group kml_rg_main-5d2252f75ac945a8 \
  --name datacenter-vm \
  --location eastus \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --os-disk-size-gb 30 \
  --storage-sku Standard_LRS \
  --nsg-rule SSH \
  --generate-ssh-keys \
  --admin-username azureuser
```

## Verification

```bash
# Check VM is running
az vm show --resource-group kml_rg_main-5d2252f75ac945a8 --name datacenter-vm --show-details

# Get public IP
az vm list-ip-addresses --resource-group kml_rg_main-5d2252f75ac945a8 --name datacenter-vm

# SSH into VM
ssh azureuser@<public-ip>
```

---

## Notes & Learnings

- ***

## References

- [Azure CLI Reference](https://docs.microsoft.com/en-us/cli/azure/)
