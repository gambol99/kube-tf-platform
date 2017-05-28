
## Route53 Public Domain
resource "aws_route53_zone" "public" {
  name            = "${var.public_zone_name}"
  comment         = "Kubernetes Public Domain for ${var.environment} environment"

  tags {
    Name        = "${var.public_zone_name}"
    Environment = "${var.environment}"
    Role        = "dns-zone"
  }
}
