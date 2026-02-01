# Day 2 - DevOps Task

## Task Description

As part of the temporary assignment to the Nautilus project, a developer named mariyam requires access for a limited duration. To ensure smooth access management, a temporary user account with an expiry date is needed. Here's what you need to do:

Create a user named mariyam on App Server 2 in Stratos Datacenter. Set the expiry date to 2027-03-28, ensuring the user is created in lowercase as per standard protocol.

> **Server:** > **Credentials:**

## \*Check the Nautilus resource for the server details

## Objective

The objective is to create a user in a specific server whose access has an expiry date

---

## Solution

### Commands Used

```bash
ssh user@server-name
```

### Step-by-Step

1. ssh into appropriate server using the provided server details and password
2. Run the create command

```bash
sudo useradd -e 2027-03-28 mariyam
```

---

## Verification

To check that use user `mariyam` has been successfully created, run the following command:

```bash
sudo chage -l mariyam
```

---

## Notes & Learnings

- ***

## References

-
