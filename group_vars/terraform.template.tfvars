## cluster_ingress: The ingress subdomain for the cluster
#cluster_ingress=""
## config_banner_text: The text that will appear in the top banner in the cluster
config_banner_text="Customer Care"
## entitlement_key: The Cloud Pak entitlement key
#entitlement_key=""
## gitops_repo_repo: The short name of the repository (i.e. the part after the org/group name)
#gitops_repo_repo=""
## region: the value of region
region="us-south"
## resource_group_name: The name of the resource group
resource_group_name="Default"
## cloud_pak_deployer_namespace: The value that should be used for the namespace
cloud_pak_deployer_namespace="cloud-pak-deployer"
## cluster_flavor: The machine type that will be provisioned for classic infrastructure
cluster_flavor="bx2.16x64"
## cluster_name: The name of the cluster that will be created within the resource group
#cluster_name=""
## cluster_subnets__count: The number of subnets that should be provisioned
cluster_subnets__count="3"
## common_tags: Common tags that should be added to the instance
#common_tags=""
## cpd_instance_namespace: The value that should be used for the namespace
cpd_instance_namespace="cpd-instance"
## cpd_version: The CP4D version to deploy.
cpd_version="4.6.0"
## deployer_storage_class: Storage class to be used by the cloud pak deployer
deployer_storage_class="ocs-storagecluster-cephfs"
## gitops_repo_host: The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used.
#gitops_repo_host=""
## gitops_repo_org: The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used.
#gitops_repo_org=""
## gitops_repo_project: The project that will be used for the git repo. (Primarily used for Azure DevOps repos)
#gitops_repo_project=""
## gitops_repo_username: The username of the user with access to the repository
#gitops_repo_username=""
## install_analyticsengine: Install Analytics Engine cartridge
#install_analyticsengine=""
## install_bigsql: Install bigsql cartridge
#install_bigsql=""
## install_ca: Install ca cartridge
#install_ca=""
## install_cde: Install cde cartridge
#install_cde=""
## install_datagate: Install datagate cartridge
#install_datagate=""
## install_datastage-ent-plus: Install datastage-ent-plus cartridge
#install_datastage-ent-plus=""
## install_db2: Install db2 cartridge
#install_db2=""
## install_db2u: Install db2u cartridge
#install_db2u=""
## install_db2wh: Install db2wh cartridge
#install_db2wh=""
## install_dmc: Install dmc cartridge
#install_dmc=""
## install_dods: Install dods cartridge
#install_dods=""
## install_dp: Install dp cartridge
#install_dp=""
## install_dv: Install dv cartridge
#install_dv=""
## install_hadoop: Install hadoop cartridge
#install_hadoop=""
## install_mdm: Install mdm cartridge
#install_mdm=""
## install_openpages: Install openpages cartridge
#install_openpages=""
## install_planning-analytics: Install planning-analytics cartridge
#install_planning-analytics=""
## install_rstudio: Install rstudio cartridge
#install_rstudio=""
## install_scheduler: Install scheduler cartridge
#install_scheduler=""
## install_spss: Install spss cartridge
#install_spss=""
## install_voice-gateway: Install voice-gateway cartridge
#install_voice-gateway=""
## install_watson-assistant: Install watson-assistant cartridge
install_watson-assistant="true"
## install_watson-discovery: Install watson-discovery cartridge
install_watson-discovery="true"
## install_watson-ks: Install watson-ks cartridge
#install_watson-ks=""
## install_watson-openscale: Install watson-openscale cartridge
#install_watson-openscale=""
## install_watson-speech: Install watson-speech cartridge
#install_watson-speech=""
## install_wkc: Install wkc cartridge
#install_wkc=""
## install_wml: Install wml cartridge
#install_wml=""
## install_wml-accelerator: Install wml-accelerator cartridge
#install_wml-accelerator=""
## install_wsl: Install wsl cartridge
#install_wsl=""
## name_prefix: The prefix name for the service. If not provided it will default to the resource group name
name_prefix="customer_care"
## worker_count: The number of worker nodes that should be provisioned for classic infrastructure
worker_count="3"
