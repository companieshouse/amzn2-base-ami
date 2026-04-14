build {
  sources = [
    "source.amazon-ebs.builder",
  ]

  provisioner "ansible" {
    host_alias = "${var.ansible_host_alias}"
    playbook_file = "${var.playbook_file_path}"
    extra_arguments  = [
      "-e", "aws_region=${var.aws_region}"
    ]
  }

  provisioner "shell" {
    inline = [
      "sudo find /root /home -name authorized_keys -delete",
      "sudo find /root /home -name '.*history' -delete"
    ]
  }
}
