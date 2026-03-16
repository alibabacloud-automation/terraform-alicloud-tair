# Advanced Example

This example demonstrates the advanced usage of the Tair module with cluster architecture and custom configurations.

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## Cost

This example creates one Tair instance with `tair.rdb.4g` instance class and 2 shards (cluster architecture) using PayAsYouGo billing method. The actual cost depends on the instance class, shard count, and usage duration.

## Features Demonstrated

- Custom instance class (4GB)
- Cluster architecture (2 shards)
- Custom security IP whitelist
- Resource tagging
