# 300-cloud-pak-for-data-foundation

GitOps deployment of Data Foundation for Cloud pak for Data

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
| [gitops-cp4d-deployer](https://github.com/cloud-native-toolkit/terraform-gitops-cp4d-deployer) | Module to populate a gitops repo with the resources to provision IBM Cloud Pak for Data using the Cloud Pak Deployer | v0.0.7 |
| [gitops-namespace](https://github.com/cloud-native-toolkit/terraform-gitops-namespace) | Module to configure the provisioning of a namespace in a GitOps repo | v1.15.0 |
| [gitops-namespace](https://github.com/cloud-native-toolkit/terraform-gitops-namespace) | Module to configure the provisioning of a namespace in a GitOps repo | v1.15.0 |
| [gitops-repo](https://github.com/cloud-native-toolkit/terraform-tools-gitops) | Module to provision and set up a GitOps repository | v1.23.3 |
| [util-clis](https://github.com/cloud-native-toolkit/terraform-util-clis) | Module to install clis into local bin directory | v1.18.2 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| deployer_storage_class | Storage class to be used by the cloud pak deployer |  | ocs-storagecluster-cephfs |
| cluster_name | The namespace where the cloud pak deployer will be deployed |  | cloud-pak-for-data |
| cluster_ingress | The ingress subdomain for the cluster |  |  |
| cpd_version | The CP4D version to deploy. |  | 4.6.0 |
| entitlement_key | The Cloud Pak entitlement key |  |  |
| install_scheduler | Install scheduler cartridge |  | false |
| install_analyticsengine | Install Analytics Engine cartridge |  | false |
| install_bigsql | Install bigsql cartridge |  | false |
| install_ca | Install ca cartridge |  | false |
| install_cde | Install cde cartridge |  | false |
| install_datagate | Install datagate cartridge |  | false |
| install_datastage-ent-plus | Install datastage-ent-plus cartridge |  | false |
| install_db2 | Install db2 cartridge |  | false |
| install_db2u | Install db2u cartridge |  | false |
| install_db2wh | Install db2wh cartridge |  | false |
| install_dmc | Install dmc cartridge |  | false |
| install_dods | Install dods cartridge |  | false |
| install_dp | Install dp cartridge |  | false |
| install_dv | Install dv cartridge |  | false |
| install_hadoop | Install hadoop cartridge |  | false |
| install_mdm | Install mdm cartridge |  | false |
| install_openpages | Install openpages cartridge |  | false |
| install_planning-analytics | Install planning-analytics cartridge |  | false |
| install_rstudio | Install rstudio cartridge |  | false |
| install_spss | Install spss cartridge |  | false |
| install_voice-gateway | Install voice-gateway cartridge |  | false |
| install_watson-assistant | Install watson-assistant cartridge |  | false |
| install_watson-discovery | Install watson-discovery cartridge |  | false |
| install_watson-ks | Install watson-ks cartridge |  | false |
| install_watson-openscale | Install watson-openscale cartridge |  | false |
| install_watson-speech | Install watson-speech cartridge |  | false |
| install_wkc | Install wkc cartridge |  | false |
| install_wml | Install wml cartridge |  | false |
| install_wml-accelerator | Install wml-accelerator cartridge |  | false |
| install_wsl | Install wsl cartridge |  | false |
| cloud_pak_deployer_namespace | The value that should be used for the namespace |  | cloud-pak-deployer |
| cpd_instance_namespace | The value that should be used for the namespace |  | cpd-instance |
| gitops_repo_host | The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used. |  |  |
| gitops_repo_org | The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used. |  |  |
| gitops_repo_project | The project that will be used for the git repo. (Primarily used for Azure DevOps repos) |  |  |
| gitops_repo_username | The username of the user with access to the repository |  |  |
| gitops_repo_token | The personal access token used to access the repository | true |  |
| gitops_repo_repo | The short name of the repository (i.e. the part after the org/group name) |  |  |

## Troubleshooting

