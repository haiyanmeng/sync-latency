#! /bin/bash

nss=""
for i in {1..1000}
do
  nss="${nss} foo${i}"
done
kubectl delete ns ${nss}
