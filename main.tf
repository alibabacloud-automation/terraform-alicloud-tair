resource "alicloud_redis_tair_instance" "this" {
  tair_instance_name = var.tair_instance_name

  instance_type  = var.instance_type
  instance_class = var.instance_class

  zone_id    = var.zone_id
  vpc_id     = var.vpc_id
  vswitch_id = var.vswitch_id

  shard_count = var.shard_count

  password      = var.password
  vpc_auth_mode = var.vpc_auth_mode
  security_ips  = join(",", var.security_ips)

  payment_type = var.payment_type
  period       = var.payment_type == "Subscription" ? var.period : null

  tags = var.tags

  ssl_enabled     = var.ssl_enabled
  read_only_count = var.read_only_count > 0 ? var.read_only_count : null

  engine_version = var.engine_version
  port           = var.port
}
