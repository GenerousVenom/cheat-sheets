resource "null_resource" "tf-addfile" {
  count = length(local.package_install)
  connection {
    type = "ssh"
    user = "root"
    password = "123qwe!@#QWE"
    host = local.package_install[count.index]
  }

  provisioner "remote-exec" {
    inline = [
      "cd /etc/yum.repos.d",
      "sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*",
      "sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*",
      "yum update -y",
      "systemctl disable firewalld",
      "systemctl stop firewalld"
      # "apt-get install curl",
      # "apt install net-tools"
    ]
  }

  depends_on = [
    vsphere_virtual_machine.tf-vsphere-vm
  ]
}