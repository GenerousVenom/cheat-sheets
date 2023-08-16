module "K3s-Server" {
  source = "./modules/K3s Servers"
  resource_pool_id = data.vsphere_compute_cluster.tf-vsphere-clus.resource_pool_id
  datastore_id = data.vsphere_datastore.tf-vsphere-ds.id
  network_id = data.vsphere_network.tf-vsphere-nw.id
  temp_guest_id = data.vsphere_virtual_machine.tf-template-C8.guest_id
  temp_id = data.vsphere_virtual_machine.tf-template-C8.id
  depends_on = [ 
    data.vsphere_compute_cluster.tf-vsphere-clus,
    data.vsphere_datastore.tf-vsphere-ds,
    data.vsphere_network.tf-vsphere-nw
  ]
}

module "K3s-Agents" {
  source = "./modules/K3s Agents"
  resource_pool_id = data.vsphere_compute_cluster.tf-vsphere-clus.resource_pool_id
  datastore_id = data.vsphere_datastore.tf-vsphere-ds.id
  network_id = data.vsphere_network.tf-vsphere-nw.id
  temp_guest_id = data.vsphere_virtual_machine.tf-template-C8.guest_id
  temp_id = data.vsphere_virtual_machine.tf-template-C8.id
  depends_on = [ 
    data.vsphere_compute_cluster.tf-vsphere-clus,
    data.vsphere_datastore.tf-vsphere-ds,
    data.vsphere_network.tf-vsphere-nw
  ]
}

module "External-Services" {
  source = "./modules/External Services"
  resource_pool_id = data.vsphere_compute_cluster.tf-vsphere-clus.resource_pool_id
  datastore_id = data.vsphere_datastore.tf-vsphere-ds.id
  network_id = data.vsphere_network.tf-vsphere-nw.id
  temp_guest_id = data.vsphere_virtual_machine.tf-template-U22.guest_id
  temp_id = data.vsphere_virtual_machine.tf-template-U22.id
  depends_on = [ 
    data.vsphere_compute_cluster.tf-vsphere-clus,
    data.vsphere_datastore.tf-vsphere-ds,
    data.vsphere_network.tf-vsphere-nw
  ]
}