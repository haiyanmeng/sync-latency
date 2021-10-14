#!/bin/bash

  cat > configs-10000-cms-one-ns/ns-1.yaml <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: my-ns-1
EOF

  for cm in {1..10000}
  do
  cat > configs-10000-cms-one-ns/cm-${cm}.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: cm-${cm}
  namespace: my-ns-1
data:
  foo: bar
  bar: my-ns-1
EOF
  done


