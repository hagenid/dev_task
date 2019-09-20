# dev_task




Task from dev


- create a Github repository for the DevOps parts 
- organize each and everything accordingly in the git repository
- in the AWS create Cloudformation template defining a VPC for the whole stuff
- In the AWS Account create KOPS cluster with 2 nodes 
- Deploy and setup Concourse
- In Councourse build an Docker image out of https://github.com/ngx-api-utils/ngx-api-utils (the Demo App) in one Job push it to AWS ECS Registry and then in another Job Deploy the App in the cluster
- Spin up an AWS Loadbalancer for the application

Use:
- kops - https://github.com/kubernetes/kops
- blackbox - https://github.com/StackExchange/blackbox
- concourse - https://concourse-ci.org/
- helm - https://github.com/helm/charts
- aws - use own aws account
- Docker in multistage build for the image build only

