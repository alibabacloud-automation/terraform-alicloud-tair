# Basic Example

This example demonstrates the basic usage of the Tair module to create a Tair (Redis OSS-Compatible) instance with minimal configuration.

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## Cost

This example creates one Tair instance with `tair.rdb.2g` instance class using PayAsYouGo billing method. The actual cost depends on the instance class and usage duration.

## Notes

- This example uses the default VPC and vSwitch in the region.
- The instance is created with `PayAsYouGo` billing by default.
- You need to provide a valid VPC and vSwitch ID.
