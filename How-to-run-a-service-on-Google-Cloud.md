- Go to https://console.cloud.google.com
- Create a VM instance in Compute Engine (I'm using GNU/Debian Linux 9 Stretch). Note that I'm using Compute Engine rather that App Engine because the former is thought to be cheaper. I didn't do price comparison myself though.

# Choosing an environment
Google Cloud offers 3 major options in terms of environment in increasing order of automation and abstraction:
- Google Compute Engine
- Google Container Engine
- Google App Engine
- Google Cloud Functions

![Infrastructure Abstraction Levels](https://github.com/yursha/howtos/blob/master/img/infrastructure-abstractions.svg)

## Features of Compute Engine (IaaS)
- Manage your own VM instances.
- Have to deploy a Load Balancer for scalability.

## Features of Container Engine (CaaS)
- Focuses on Docker and Kubernetes

## Features of App Engine (PaaS)
- Out-of-the-box support for Node.js, Java, Ruby, C#, Go, Python, and PHP.
- Scales up automatically by adding more instances depending on traffic.
- Scales down automatically (up to zero instances) depending on traffic.
- Automatic load-balancing
- Automatic health-checks
- Automatic healing
- Automatic OS updates.
- SSH directly into your instances to deploy custom code, manage containers, or integrate App Engine into your DevOps process.
- No need to create a configure VM instances.
- Prices per 15 min (shuts down only in 15 minutes of inactivity)
- Cold-starting introduces few seconds of latency or longer.
- No need to install, patch or configure any software, copy disks, etc.
- Load and capacity management - automatically spinning up and shutting down instances as required.
- You are billed for the Instance-Hours, Transferred Data, Storage etc
- Allow Docker Containers ???
- Application Versioning. Easily host different versions of your app, easily create development, test, staging, and production environments.
- Traffic Splitting. Route incoming requests to different app versions, A/B test and do incremental feature rollouts.
- Application Security. Help safeguard your application by defining access rules with App Engine firewall and leverage managed SSL/TLS certificates* by default on your custom domain at no additional cost.
- 

### App Engine Flexible Environment (Managed VM)

## Features of Cloud Functions
- No instances running
- Never starts from cold
- Prices per 100 milliseconds