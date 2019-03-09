#!/bin/bash
kops create cluster --name=prodmyterraform.com \
--zones="eu-west-1a,eu-west-1b,eu-west-1c" \
--node-size="t2.micro" \
--master-size="t2.micro" \
--master-zones="eu-west-1b,eu-west-1a,eu-west-1c" \
--networking="weave" \
--topology="private" \
--bastion="true" \
--dns="private" \
--zones="eu-west-1a,eu-west-1b,eu-west-1c" \
--state="s3://prodmyterraform.com" \
--out=. \
--target=terraform

