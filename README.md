# eks-cluster

Configurable Terraform module for cresting AWS EKS cluster.

## TODO

* enable Security Groups for Pods (arn:aws:iam::aws:policy/AmazonEKSVPCResourceController)? https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
* see resource "kubernetes_namespace_v1" "k8s_dev"  we probably don't want to create it. for now iam roles are just for playing and determining what is really needed