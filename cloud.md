- http://www.rightscale.com/

# [AWS](https://aws.amazon.com/)
- [Free Tier](http://aws.amazon.com/free/)
- [Monthly Webinars](https://aws.amazon.com/about-aws/events/monthlywebinarseries/)
- [Backup and Recovery](https://aws.amazon.com/backup-recovery/)
- [Big Data on AWS](https://aws.amazon.com/big-data/)
- [Cloud Data Migration](https://aws.amazon.com/cloud-data-migration/) - large-volume data transfers
- [AWS CloudTrail](https://aws.amazon.com/cloudtrail/)
- [AWS Compliance](http://aws.amazon.com/compliance/)
- [Amazon DynamoDB](http://aws.amazon.com/dynamodb/)
- [Amazon Relational Database Service (RDS)](http://aws.amazon.com/rds/)
- [Amazon CloudSearch](http://aws.amazon.com/cloudsearch/)
- [Amazon CloudTrail](http://aws.amazon.com/cloudtrail/) - records AWS API calls for your account and delivers log files to you.
- [Simple Notification Service (SNS)](http://aws.amazon.com/sns/) - Pub-sub Service for Mobile and Enterprise Messaging.
- [Simple Queue Service (SQS)](http://aws.amazon.com/sqs/)
- [AWS Lambda](http://aws.amazon.com/lambda/)
- [Development and Test](https://aws.amazon.com/dev-test/)
- [Amazon Elastic File System (EFS)](https://aws.amazon.com/efs/)
- [AWS Indentity and Access Management (IAM)](https://aws.amazon.com/iam/)
- [AWS Import/Export Showball](https://aws.amazon.com/importexport/)
- Amazon CloudFront - CDN

## White papers
- [AWS Storage Services Overview](https://d0.awsstatic.com/whitepapers/AWS%20Storage%20Services%20Whitepaper-v9.pdf)
- [Backup. Archive, and Restore Approaches Using AWS](https://d0.awsstatic.com/whitepapers/Backup_Archive_and_Restore_Approaches_Using_AWS.pdf)
- [Hosting Static Websites on AWS](https://d0.awsstatic.com/whitepapers/Building%20Static%20Websites%20on%20AWS.pdf)
- [Enterprise Backup and Recovery](https://d0.awsstatic.com/whitepapers/best-practices-for-backup-and-recovery-on-prem-to-aws.pdf)

## [Case Studies](https://aws.amazon.com/solutions/case-studies/)
- [Case Study: Hess Corporation](https://aws.amazon.com/solutions/case-studies/hess-corporation/)
- [Case Study: NASDAQ](https://aws.amazon.com/solutions/case-studies/nasdaq-finqloud/)

## Blog
- [Create WORM Archive Storage with Amazon Glacier](https://aws.amazon.com/blogs/aws/glacier-vault-lock/)

-------------------------------------------------------------
# [Elastic Compute Cloud (EC2)](http://aws.amazon.com/ec2/)
- [Docs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)


-------------------------------------------------------------
# [Simple Storage Service (S3)](https://aws.amazon.com/s3/)
Low-cost, highly available, elastic app storage for objects from 1B to 5TB with metadata.
- [Docs](http://docs.aws.amazon.com/AmazonS3/latest/dev/Welcome.html)

## Terminology
- buckets are like folders
- objects are like files
- object keys are like file names
- Storage Classes
    + Standard
    + Standard-Infrequent Access

## Interfaces
- REST API
- SOAP API
- SDK for different languages/platforms
- AWS CLI
- AWS Management Console (Web App)

## Use Cases
- storage and distribution of static web content and media
- fastgrowing websites hosting data intensive, user-generated content, such as video and photo sharing sites
- hosting web content that requires the bandwidth to address extreme demand spikes
- host entire static websites
- data store for computation and large-scale analytics, such as financial transaction analysis, clickstream analytics, and media transcoding
- backup and archiving of critical data

- [What is cloud storage by Amazon](https://aws.amazon.com/what-is-cloud-storage/)

-------------------------------------------------------------
# [Amazon Glacier](https://aws.amazon.com/glacier/)
Archive storage. Stores archives (each up to 40TB) in vaults. Data retrieval may take 3-5 hours to complete. Data can be retrieved by byte offsets (ranges).

### Interfaces
- REST API
- Java/.Net SDKs
- AWS CLI
- AWS Management Console (Web App)

### Use cases
- archiving offsite enterprise information, media assets, and research and scientific data, and also performing digital preservation and magnetic tape replacement.
- [Docs](http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html)

-------------------------------------------------------------
# [Amazon Elastic Block Store (EBS)](https://aws.amazon.com/ebs/)
Persistent network-attached storage volumes (1GB to 16TB) for EC2 instances.

### Use Cases
-  data that changes relatively frequently and requires long-term persistence
- primary storage for a database or file system, or for any applications that require access to raw block-level storage
- Amazon EBS Magnetic is well-suited for infrequently accessed data
- Amazon EBS General Purpose (SSD) is well-suited for boot volumes and small to medium databases
- Amazon EBS Provisioned IOPS (SSD) is well-suited for use with I/O-intensive workloads, relational databases, and NoSQL databases
