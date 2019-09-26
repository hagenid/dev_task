#!/bin/bash 

export REGION=us-east-1
export KOPS_STATE_STORE=s3://kops.localdevops.com
export NAME=localdevops.com

sudo -s apt-get -y update && apt-get -y upgrade



# Create Cluster for domain localdevops.com

kops create cluster --zones us-east-1b \
		    --master-size t2.micro \ 
		    --master-count 1 \
		    --node-size t2.micro \
		    --node-count 3 ${NAME}

