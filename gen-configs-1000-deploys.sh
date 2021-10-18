#!/bin/bash

for i  in {1..1000}
do
  cat > configs-1000-deploys/deploy-${i}.yaml <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx${i}
  namespace: bookstore
spec:
  replicas: 1
  minReadySeconds: 9
  selector:
    matchLabels:
      app: nginx${i}
  template:
    metadata:
      labels:
        app: nginx${i}
    spec:
      containers:
      - image: nginx:1.7.9
        name: nginx${i}
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 80
          protocol: TCP
EOF

done
