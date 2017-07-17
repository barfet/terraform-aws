output "domain" {
    value = "${var.services_subdomain}.borysenok.com"
}

output "name_servers" {
    value = ["${aws_route53_zone.services.name_servers}"]
}

output "dns_zone_id" {
    value = "${aws_route53_zone.services.zone_id}"
}