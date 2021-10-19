#! /bin/bash


for name in pubsubtopic.pubsub.cnrm.cloud.google.com/test-cs pubsubsubscription.pubsub.cnrm.cloud.google.com/test-cs-read iampolicymember.iam.cnrm.cloud.google.com/policy-member-binding iamserviceaccount.iam.cnrm.cloud.google.com/pubsub-app service.serviceusage.cnrm.cloud.google.com/pubsub.googleapis.com
do
kubectl wait --for=condition=READY $name -n foo
done
