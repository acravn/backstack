# BACK Stack
Repo to demostrate the BACK stack as inspired by several talks at Kubecon 2025

This repository provides a simple environment built on top of Kind (Kubernetes IN Docker) to deploy a sample of the BACK stack.

BACK stack refers to a combination of Backstage, ArgoCD, Crossplane, and Kyverno, which together enable modern GitOps workflows, platform engineering, cloud resource management, and policy enforcement in Kubernetes environments.

- **Backstage**: An open platform for building developer portals.
- **ArgoCD**: A declarative GitOps continuous delivery tool for Kubernetes.
- **Crossplane**: A framework for managing cloud infrastructure and services using Kubernetes-native APIs.
- **Kyverno**: A Kubernetes-native policy engine for validating, mutating, and generating resources.

This deployment uses Kind to create a local Kubernetes cluster and provisions the BACK stack components for demonstration and development purposes.
 
 Future iterations of this repository will provide an alternative deployment that swaps ArgoCD for FluxCD, another popular GitOps tool.
