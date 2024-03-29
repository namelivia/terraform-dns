terraform {
  required_version = ">= 1.0.11"
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_record" "a_record" {
  for_each = var.a_records
  domain = "${var.domain_name}"
  type   = "A"
  name   = each.value.name
  value  = lookup(var.host_ips, each.value.host)
  ttl 	 = "${var.default_ttl}"
}

resource "digitalocean_record" "ns1" {
  domain = "${var.domain_name}"
  type   = "NS"
  name   = "@"
  value  = "ns1.digitalocean.com."
  ttl 	 = "${var.default_ttl}"
}

resource "digitalocean_record" "ns2" {
  domain = "${var.domain_name}"
  type   = "NS"
  name   = "@"
  value  = "ns2.digitalocean.com."
  ttl 	 = "${var.default_ttl}"
}

resource "digitalocean_record" "ns3" {
  domain = "${var.domain_name}"
  type   = "NS"
  name   = "@"
  value  = "ns3.digitalocean.com."
  ttl 	 = "${var.default_ttl}"
}
