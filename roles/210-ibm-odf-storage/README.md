# 210-ibm-odf-storage

Installs OpenShift Data Foundation in an IBM cluster

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


The following layers are dependencies of this terraform template and must be applied before this one.
- [gitops](../200-openshift-gitops)

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [gitops-ibm-odf](https://github.com/cloud-native-toolkit/terraform-gitops-ibm-odf) | Module to populate a gitops repo with the resources to provision ibm-ocs using the OpenShift Data Foundation add-on for ROKS clusters. | v0.4.0 |
| [gitops-namespace](https://github.com/cloud-native-toolkit/terraform-gitops-namespace) | Module to configure the provisioning of a namespace in a GitOps repo | v1.12.2 |
| [gitops-repo](https://github.com/cloud-native-toolkit/terraform-tools-gitops) | Module to provision and set up a GitOps repository | v1.23.3 |
| [util-clis](https://github.com/cloud-native-toolkit/terraform-util-clis) | Module to install clis into local bin directory | v1.18.2 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| ibmcloud_api_key | The api key for IBM Cloud access |  |  |
| gitops_repo_host | The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used. |  |  |
| gitops_repo_org | The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used. |  |  |
| gitops_repo_project | The project that will be used for the git repo. (Primarily used for Azure DevOps repos) |  |  |
| gitops_repo_username | The username of the user with access to the repository |  |  |
| gitops_repo_token | The personal access token used to access the repository | true |  |
| gitops_repo_repo | The short name of the repository (i.e. the part after the org/group name) |  |  |

## Troubleshooting

