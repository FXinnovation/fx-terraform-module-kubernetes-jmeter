module "this" {
  source = "../../"

  master_envs = {
    foo = "bar"
  }
  slave_envs = {
    foo = "tre"
  }
  pvc_storage_class_name = "standard"
  pvc_volume_name        = "examplevolumename"
}
