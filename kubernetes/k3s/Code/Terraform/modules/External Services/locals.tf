locals {
  docker_install = [local.vm1.ipv4_address, local.vm2.ipv4_address]
  vm1 = {
    name_of_vm      = "Thinh_U22_K3s_ELB"
    name_of_host    = "Ubuntu22"
    name_of_domain  = "Ubuntu22"
    name_of_folder  = "Thinh.Phung - VM"
    ipv4_address    = "192.168.22.130"
    ipv4_netmask    = 24
    dns_server_list = "192.168.22.189"
    ipv4_gateway    = "192.168.22.1"
    disk_size       = "100"
    num_cpus        = 2
    memory          = 4096
  }

  vm2 = {
    name_of_vm      = "Thinh_U22_K3s_DNS"
    name_of_host    = "Ubuntu22"
    name_of_domain  = "Ubuntu22"
    name_of_folder  = "Thinh.Phung - VM"
    ipv4_address    = "192.168.22.189"
    ipv4_netmask    = 24
    dns_server_list = "8.8.8.8"
    ipv4_gateway    = "192.168.22.1"
    disk_size       = "100"
    num_cpus        = 2
    memory          = 4096
  }
}