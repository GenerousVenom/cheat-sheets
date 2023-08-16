locals {
  package_install = [local.vm1.ipv4_address, local.vm2.ipv4_address, local.vm3.ipv4_address]
  
  vm1 = {
    name_of_vm      = "Thinh_C8_K3s_Agent1"
    name_of_host    = "K3sa1"
    name_of_domain  = "K3sa1"
    name_of_folder  = "Thinh.Phung - VM"
    ipv4_address    = "192.168.22.157"
    ipv4_netmask    = 24
    dns_server_list = "192.168.22.189"
    ipv4_gateway    = "192.168.22.1"
    disk_size       = "50"
    num_cpus        = 2
    memory          = 8096
  }

  vm2 = {
    name_of_vm      = "Thinh_C8_K3s_Agent2"
    name_of_host    = "K3sa2"
    name_of_domain  = "K3sa2"
    name_of_folder  = "Thinh.Phung - VM"
    ipv4_address    = "192.168.22.158"
    ipv4_netmask    = 24
    dns_server_list = "192.168.22.189"
    ipv4_gateway    = "192.168.22.1"
    disk_size       = "50"
    num_cpus        = 2
    memory          = 4096
  }

  vm3 = {
    name_of_vm      = "Thinh_C8_K3s_Agent3"
    name_of_host    = "K3sa3"
    name_of_domain  = "K3sa3"
    name_of_folder  = "Thinh.Phung - VM"
    ipv4_address    = "192.168.22.159"
    ipv4_netmask    = 24
    dns_server_list = "192.168.22.189"
    ipv4_gateway    = "192.168.22.1"
    disk_size       = "50"
    num_cpus        = 2
    memory          = 8192
  }
}