provider "alicloud" {
  region = var.region
}

data "alicloud_kvstore_zones" "default" {
  product_type = "Tair_rdb"
}

data "alicloud_vpcs" "default" {
  name_regex = "default"
}

data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids[0]
  zone_id = data.alicloud_kvstore_zones.default.zones[0].id
}

module "tair" {
  source = "../.."

  tair_instance_name = var.tair_instance_name
  instance_type      = var.instance_type
  instance_class     = var.instance_class
  zone_id            = data.alicloud_kvstore_zones.default.zones[0].id
  vpc_id             = data.alicloud_vpcs.default.ids[0]
  vswitch_id         = data.alicloud_vswitches.default.ids[0]
  password           = var.password
  shard_count        = var.shard_count
  read_only_count    = var.read_only_count
  ssl_enabled        = var.ssl_enabled
  engine_version     = var.engine_version
  port               = var.port
  security_ips       = var.security_ips

  tags = {
    Environment = "production"
    Team        = "backend"
    ManagedBy   = "Terraform"
  }
}
