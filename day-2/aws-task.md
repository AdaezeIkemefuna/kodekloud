# Day 2 - AWS Task

## Task Description

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units. This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

For this task, create a security group under default VPC with the following requirements:

Name of the security group is nautilus-sg.

The description must be Security group for Nautilus App Servers

Add the inbound rule of type HTTP, with port range of 80. Enter the source CIDR range of 0.0.0.0/0.

Add another inbound rule of type SSH, with port range of 22. Enter the source CIDR range of 0.0.0.0/0.

> **Region:** > **Account:** > **Credentials:**

---

## Solution

### Method Used

- [ ] AWS CLI

### Commands / Steps

```bash
# Create security group
aws ec2 create-security-group \
  --group-name nautilus-sg \
  --description "Security group for Nautilus App Servers"

# Add HTTP rule (port 80)
aws ec2 authorize-security-group-ingress \
  --group-name nautilus-sg \
  --protocol tcp \
  --port 80 \
  --cidr 0.0.0.0/0

# Add SSH rule (port 22)
aws ec2 authorize-security-group-ingress \
  --group-name nautilus-sg \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0
```

---

## Verification

```bash
aws ec2 describe-security-groups --group-names nautilus-sg
```

---

## Notes & Learnings

- ***

## References

- [AWS CLI Reference](https://docs.aws.amazon.com/cli/)
