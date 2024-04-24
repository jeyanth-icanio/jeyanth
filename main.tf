# Generate random resource group name

# resource "random_pet" "rg_name" {
#   prefix = var.resource_group_name_prefix
# }

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
}

# resource "random_pet" "azurerm_kubernetes_cluster_name" {
#   prefix = "cluster"
# }

# resource "random_pet" "azurerm_kubernetes_cluster_dns_prefix" {
#   prefix = "dns"
# }

resource "azurerm_kubernetes_cluster" "k8s" {
  location            = azurerm_resource_group.rg.location
  name                = var.resource_group_name
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2s_v3"
    node_count = var.node_count
  }
  # linux_profile {
  #   admin_username = var.username

  #   ssh_key {
  #     key_data = jsondecode(azapi_resource_action.ssh_public_key_gen.output).publicKey
  #   }
  # }
  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }
}
resource "azurerm_container_registry" "example" {
  location            = azurerm_resource_group.rg.location
  name                = var.resource_group_name
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Premium"
}

resource "azurerm_role_assignment" "example" {
  principal_id          = azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id
  role_definition_name  = "Azure Kubernetes Fleet Manager RBAC Admin"
  scope                 = azurerm_container_registry.example.id
  skip_service_principal_aad_check  = true
}