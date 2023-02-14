locals {
  domain      = format("%s.com", var.application)
  common_name = var.api_name
}

data "hcp_packer_iteration" "default" {
  bucket_name = var.hcp_bucket
  channel     = "prod"
}

data "hcp_packer_image" "default" {
  bucket_name    = data.hcp_packer_iteration.default.bucket_name
  iteration_id   = data.hcp_packer_iteration.default.ulid
  cloud_provider = "aws"
}

resource "aws_instance" "default" {
  ami           = data.hcp_packer_image.default.cloud_image_id
  instance_type = "t2.micro"

  tags = {
    common_name = local.common_name
  }
}

resource "aws_ec2_tag" "default" {
  resource_id = aws_instance.default.instance_id
  key         = "domain_name"
  value       = local.domain_name
}

resource "aws_route53_record" "default" {
  zone_id = aws_route53_zone.default.zone_id
  name    = format("%s.%s", local.common_name, local.domain)
  type    = "A"
  ttl     = 300
  records = [aws_instance.default.public_ip]
}
