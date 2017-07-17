resource "aws_route53_zone" "services" {
  name = "${var.services_subdomain}.borysenok.com"
}
