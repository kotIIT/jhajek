#!/bin/bash 

VAR=`aws ec2 describe-instances --query 'Reservations[0].Instances[*].InstanceId'`

aws ec2 terminate-instances --instance-ids $VAR