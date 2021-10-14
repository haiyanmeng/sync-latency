#!/bin/bash

for ns in {1..10}
do
  cat > configs-10000-cms/ns-${ns}.yaml <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: my-ns-$ns
EOF
done

for ns in {1..10}
do
  for cm in {1..1000}
  do
  cat > configs-10000-cms/ns-${ns}-cm-${cm}.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: cm-${cm}
  namespace: my-ns-$ns
data:
  foo: bar
  bar: my-ns-$ns
EOF
  done
done


