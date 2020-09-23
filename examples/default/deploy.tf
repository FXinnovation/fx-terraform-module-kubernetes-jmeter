#####
# Randoms
#####

resource "random_string" "this" {
  length  = 8
  upper   = false
  special = false
}

#####
# Module Jmeter
#####

module "this" {
  source = "../../"

  master_envs = {
    foo = "${random_string.this.result}"
  }
  slave_envs = {
    far = "${random_string.this.result}"
  }
  pvc_storage_class_name = "standard"
  pvc_volume_name        = "examplevolumename"
}
