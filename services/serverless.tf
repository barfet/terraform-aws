resource "aws_api_gateway_domain_name" "logging" {
  domain_name = "logging.${var.services_subdomain}.borysenok.com"

  certificate_arn = "${var.services_ssl_cert_arn}"
}

resource "aws_route53_record" "logging" {
  zone_id = "${aws_route53_zone.services.id}"

  name = "${aws_api_gateway_domain_name.logging.domain_name}"
  type = "A"

  alias {
    name                   = "${aws_api_gateway_domain_name.logging.cloudfront_domain_name}"
    zone_id                = "${aws_api_gateway_domain_name.logging.cloudfront_zone_id}"
    evaluate_target_health = true
  }
}