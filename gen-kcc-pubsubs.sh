#!/bin/bash

for ns in {1..1000}
do
  cat > kcc/pubsubs/ns-${ns}.yaml <<EOF
---
apiVersion: v1
kind: Namespace
metadata:
  name: foo${ns}
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
---
apiVersion: serviceusage.cnrm.cloud.google.com/v1beta1
kind: Service
metadata:
  name: pubsub.googleapis.com
  namespace: foo${ns}
  annotations:
    cnrm.cloud.google.com/deletion-policy: "abandon"
---
apiVersion: pubsub.cnrm.cloud.google.com/v1beta1
kind: PubSubTopic
metadata:
  labels:
    environment: staging
  name: test-cs
  namespace: foo${ns}
---
apiVersion: iam.cnrm.cloud.google.com/v1beta1
kind: IAMServiceAccountKey
metadata:
  name: pubsub-key
  namespace: foo${ns}
spec:
  publicKeyType: TYPE_X509_PEM_FILE
  keyAlgorithm: KEY_ALG_RSA_2048
  privateKeyType: TYPE_GOOGLE_CREDENTIALS_FILE
  serviceAccountRef:
    name: pubsub-app
---
apiVersion: iam.cnrm.cloud.google.com/v1beta1
kind: IAMPolicyMember
metadata:
  name: policy-member-binding
  namespace: foo${ns}
spec:
  member: serviceAccount:pubsub-app@haiyanmeng-gke-322517.iam.gserviceaccount.com
  role: roles/pubsub.subscriber
  resourceRef:
    apiVersion: resourcemanager.cnrm.cloud.google.com/v1beta1
    kind: Project
    external: projects/haiyanmeng-gke-322517
---
apiVersion: iam.cnrm.cloud.google.com/v1beta1
kind: IAMServiceAccount
metadata:
  name: pubsub-app
  namespace: foo${ns}
spec:
  displayName: Service account for PubSub example
---
apiVersion: pubsub.cnrm.cloud.google.com/v1beta1
kind: PubSubSubscription
metadata:
  name: test-cs-read
  namespace: foo${ns}
spec:
  topicRef:
    name: test-cs
EOF
done
