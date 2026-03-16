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
  instance_class     = var.instance_class
  zone_id            = data.alicloud_kvstore_zones.default.zones[0].id
  vpc_id             = data.alicloud_vpcs.default.ids[0]
  vswitch_id         = data.alicloud_vswitches.default.ids[0]
  password           = var.password
}
