#!/bin/bash

for ns in {1..1000}
do
  cat > configs/ns-${ns}.yaml <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: my-ns-$ns
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: cm-1
  namespace: my-ns-$ns
data:
  foo: bar
  bar: my-ns-$ns
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: cm-2
  namespace: my-ns-$ns
data:
  foo: bar2
  bar: my-ns-$ns
EOF

done
