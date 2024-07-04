```shell
aws ec2 start-instances --instance-ids i-0769bb47be7608385
```

```shell
aws ec2 stop-instances --instance-ids i-0769bb47be7608385

aws ec2 start-instances  --instance-tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Jenkins}]'
```