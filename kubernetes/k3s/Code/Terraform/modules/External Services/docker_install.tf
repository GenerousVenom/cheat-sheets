resource "null_resource" "tf-addfile" {
  count = length(local.docker_install)
  connection {
    type = "ssh"
    user = "root"
    password = "123qwe!@#QWE"
    host = local.docker_install[count.index]
  }

  provisioner "remote-exec" {
    inline = [
      "apt-get update -y",
      "apt-get install curl",
      "apt install net-tools",
      "cd /home/thinhphung/Downloads",
      "curl -fsSL https://get.docker.com -o get-docker.sh",
      "sh get-docker.sh",
      "apt install docker-compose -y"
      # "sudo apt-get update -y",
      # "sudo apt install ansible -y"
    ]
  }

  depends_on = [
    vsphere_virtual_machine.tf-vsphere-vm
  ]
}