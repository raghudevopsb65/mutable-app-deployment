//resource "null_resource" "ansible" {
//  triggers = {
//    abc = timestamp()
//  }
//  count = ""
//  provisioner "remote-exec" {
//
//    connection {
//      user     = jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["SSH_USER"]
//      password = jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["SSH_PASS"]
//      host     = ""
//
//      inline = [
//        "ansible-pull -U https://github.com/raghudevopsb65/roboshop-ansible.git roboshop.yml -e HOST=localhost -e ROLE=${var.COMPONENT} -e ENV=${var.ENV} -e DOCDB_ENDPOINT=${data.terraform_remote_state.mutable.outputs.DOCDB_ENDPOINT} -e REDIS_ENDPOINT=${data.terraform_remote_state.mutable.outputs.REDIS_ENDPOINT} -e MYSQL_ENDPOINT=${data.terraform_remote_state.mutable.outputs.MYSQL_ENDPOINT}",
//      ]
//    }
//  }
//}

