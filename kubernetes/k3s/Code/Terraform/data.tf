data "vsphere_datacenter" "tf-vshere-dc" {
  name = local.name_of_datacenter
}

data "vsphere_compute_cluster" "tf-vsphere-clus" {
  name          = local.name_of_compute_cluster
  datacenter_id = data.vsphere_datacenter.tf-vshere-dc.id
  depends_on = [ 
    data.vsphere_datacenter.tf-vshere-dc
  ]
}

data "vsphere_datastore" "tf-vsphere-ds" {
  name          = local.name_of_datastore
  datacenter_id = data.vsphere_datacenter.tf-vshere-dc.id
  depends_on = [ 
    data.vsphere_datacenter.tf-vshere-dc
  ]
}

data "vsphere_network" "tf-vsphere-nw" {
  name          = local.name_of_network
  datacenter_id = data.vsphere_datacenter.tf-vshere-dc.id
  depends_on = [ 
    data.vsphere_datacenter.tf-vshere-dc
  ]
}

data "vsphere_virtual_machine" "tf-template-C8" {     # For K3s
  name = local.name_of_template_C8
  datacenter_id = data.vsphere_datacenter.tf-vshere-dc.id
}

data "vsphere_virtual_machine" "tf-template-U22" {     # For External Services
  name = local.name_of_template_U22
  datacenter_id = data.vsphere_datacenter.tf-vshere-dc.id
}