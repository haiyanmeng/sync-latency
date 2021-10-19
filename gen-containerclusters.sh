#!/bin/bash
for ns in {1..90}
do
  cat > container-clusters/us-central1-a-cc${ns}.yaml <<EOF
apiVersion: container.cnrm.cloud.google.com/v1beta1
kind: ContainerCluster
metadata:
  labels:
    availability: dev
    target-audience: development
  name: foo-us-central1-a-${ns}
  namespace: foo
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
spec:
  description: A routes-based cluster confined to one zone configured for development.
  location: us-central1-a
  initialNodeCount: 1
  clusterTelemetry:
    type: SYSTEM_ONLY
  networkingMode: ROUTES
  addonsConfig:
    gcePersistentDiskCsiDriverConfig:
      enabled: true
    kalmConfig:
      enabled: true
    horizontalPodAutoscaling:
      disabled: true
    httpLoadBalancing:
      disabled: true
EOF

done
for ns in {1..90}
do
  cat > container-clusters/us-central1-b-cc${ns}.yaml <<EOF
apiVersion: container.cnrm.cloud.google.com/v1beta1
kind: ContainerCluster
metadata:
  labels:
    availability: dev
    target-audience: development
  name: foo-us-central1-b-${ns}
  namespace: foo
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
spec:
  description: A routes-based cluster confined to one zone configured for development.
  location: us-central1-b
  initialNodeCount: 1
  clusterTelemetry:
    type: SYSTEM_ONLY
  networkingMode: ROUTES
  addonsConfig:
    gcePersistentDiskCsiDriverConfig:
      enabled: true
    kalmConfig:
      enabled: true
    horizontalPodAutoscaling:
      disabled: true
    httpLoadBalancing:
      disabled: true
EOF

done
for ns in {1..90}
do
  cat > container-clusters/us-central1-c-cc${ns}.yaml <<EOF
apiVersion: container.cnrm.cloud.google.com/v1beta1
kind: ContainerCluster
metadata:
  labels:
    availability: dev
    target-audience: development
  name: foo-us-central1-c-${ns}
  namespace: foo
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
spec:
  description: A routes-based cluster confined to one zone configured for development.
  location: us-central1-c
  initialNodeCount: 1
  clusterTelemetry:
    type: SYSTEM_ONLY
  networkingMode: ROUTES
  addonsConfig:
    gcePersistentDiskCsiDriverConfig:
      enabled: true
    kalmConfig:
      enabled: true
    horizontalPodAutoscaling:
      disabled: true
    httpLoadBalancing:
      disabled: true
EOF

done
for ns in {1..90}
do
  cat > container-clusters/us-central1-f-cc${ns}.yaml <<EOF
apiVersion: container.cnrm.cloud.google.com/v1beta1
kind: ContainerCluster
metadata:
  labels:
    availability: dev
    target-audience: development
  name: foo-us-central1-f-${ns}
  namespace: foo
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
spec:
  description: A routes-based cluster confined to one zone configured for development.
  location: us-central1-f
  initialNodeCount: 1
  clusterTelemetry:
    type: SYSTEM_ONLY
  networkingMode: ROUTES
  addonsConfig:
    gcePersistentDiskCsiDriverConfig:
      enabled: true
    kalmConfig:
      enabled: true
    horizontalPodAutoscaling:
      disabled: true
    httpLoadBalancing:
      disabled: true
EOF

done
for ns in {1..90}
do
  cat > container-clusters/us-central2-a-cc${ns}.yaml <<EOF
apiVersion: container.cnrm.cloud.google.com/v1beta1
kind: ContainerCluster
metadata:
  labels:
    availability: dev
    target-audience: development
  name: foo-us-central2-a-${ns}
  namespace: foo
  annotations:
    "cnrm.cloud.google.com/project-id": "haiyanmeng-gke-322517"
spec:
  description: A routes-based cluster confined to one zone configured for development.
  location: us-central2-a
  initialNodeCount: 1
  clusterTelemetry:
    type: SYSTEM_ONLY
  networkingMode: ROUTES
  addonsConfig:
    gcePersistentDiskCsiDriverConfig:
      enabled: true
    kalmConfig:
      enabled: true
    horizontalPodAutoscaling:
      disabled: true
    httpLoadBalancing:
      disabled: true
EOF

done
