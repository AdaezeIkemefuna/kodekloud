# Day 3 - DevOps Task

## Task Description

Your task is to disable direct SSH root login on all app servers within the Stratos Datacenter.

---

## Solution

### Commands Used

```bash
# App Server 1
ssh tony@stapp01
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd
exit

# App Server 2
ssh steve@stapp02
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd
exit

# App Server 3
ssh banner@stapp03
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd
exit
```

---

## Verification

```bash
sudo grep PermitRootLogin /etc/ssh/sshd_config
```

---

## Notes & Learnings

- ***

## References

-
