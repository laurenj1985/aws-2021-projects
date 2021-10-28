#!/bin/bash

SGNAME=$(aws ec2 describe-security-groups | grep default | sed '1d' | cut -c27-33)
echo "you currently have these rules already in your security group"
aws ec2 describe-security-groups     --group-ids sg-037a7791635494beb | sed '1d;2d;3d;4d;5d;6d;7d;8d;9d;10d;11d;12d;13d;14d;15d;16d;17d;18d;19d;23d;25d;26d;27d;28d'| grep FromPort | sed 's/"FromPort"//g' | cut -c23-40 | sed 's/,//g'

if [[ $1 = authorize ]]
then
echo "adding rule $2"
aws ec2 $1-security-group-ingress \
	--group-name $SGNAME \
	--protocol tcp \
	--port $2 \
	--cidr 0.0.0.0/0
	echo "showing update security group rules"
	aws ec2 describe-security-groups     --group-ids sg-037a7791635494beb | sed '1d;2d;3d;4d;5d;6d;7d;8d;9d;10d;11d;12d;13d;14d;15d;16d;17d;18d;19d;23d;25d;26d;27d;28d'
fi

if [[ $1 = revoke ]]
then
echo "removing rule $2"
aws ec2 $1-security-group-ingress \
	--group-name $SGNAME \
	--protocol tcp \
	--port $2 \
	--cidr 0.0.0.0/0
	echo "showing update security group rules"
	aws ec2 describe-security-groups     --group-ids sg-037a7791635494beb | sed '1d;2d;3d;4d;5d;6d;7d;8d;9d;10d;11d;12d;13d;14d;15d;16d;17d;18d;19d;23d;25d;26d;27d;28d'
fi
