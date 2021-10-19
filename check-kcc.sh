#! /bin/bash

for i in {1..1000}
do
for name in pubsubtopic.pubsub.cnrm.cloud.google.com/test-cs pubsubsubscription.pubsub.cnrm.cloud.google.com/test-cs-read iampolicymember.iam.cnrm.cloud.google.com/policy-member-binding iamserviceaccount.iam.cnrm.cloud.google.com/pubsub-app
do
kubectl get $name -n foo${i}
done
done
