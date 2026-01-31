# Day 1 - DevOps Task

## Task

Create a user named `jim` with a non-interactive shell on App Server 3.

## Solution

```bash
# SSH into App Server 3
ssh banner@stapp03

# Create user with non-interactive shell
sudo useradd -s /sbin/nologin jim
```

## Notes

- Non-interactive shell (`/sbin/nologin`) prevents the user from logging in interactively
- Useful for service accounts like backup agents
