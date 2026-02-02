# Day 3 - AWS Task

## Task Description

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition.
For this task, create one subnet named nautilus-subnet under default VPC.

> **Region: us-east-1 (already logged in)** > **Account:** > **Credentials:**

---

## Solution

### Method Used

- [ ] AWS CLI

### Commands / Steps

```bash
# Get default VPC ID
aws ec2 describe-vpcs --filters "Name=is-default,Values=true" --query "Vpcs[0].VpcId" --output text

#create subnet
aws ec2 create-subnet \
  --vpc-id <vpc-id-from-above> \
  --cidr-block 172.31.96.0/20 \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=nautilus-subnet}]'
```

### Step-by-Step

1.
2.
3.

---

## Verification

````bash
aws ec2 describe-subnets --filters "Name=tag:Name,Values=nautilus-subnet"```

---

## Notes & Learnings

-

---

## References

- [AWS CLI Reference](https://docs.aws.amazon.com/cli/)
````
