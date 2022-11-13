resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_agerst_hnswave_co__a" {
  name    = "agerst.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_campusflirt_hnswave_co__a" {
  name    = "campusflirt.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_cdn_hnswave_co__a" {
  name    = "cdn.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_droplet_hnswave_co__a" {
  name    = "droplet.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_games_hnswave_co__a" {
  name    = "games.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_hnswave_co__a" {
  name    = "hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_hnswave_co__mx" {
  name    = "hnswave.co"
  records = ["10 hnswave.co"]
  ttl     = 300
  type    = "MX"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_hnswave_co__ns" {
  name    = "hnswave.co"
  records = ["ns-1195.awsdns-21.org.", "ns-1644.awsdns-13.co.uk.", "ns-1015.awsdns-62.net.", "ns-276.awsdns-34.com."]
  ttl     = 172800
  type    = "NS"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_hnswave_co__soa" {
  name    = "hnswave.co"
  records = ["ns-276.awsdns-34.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = 900
  type    = "SOA"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_js_hnswave_co__a" {
  name    = "js.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_mastery_hnswave_co__a" {
  name    = "mastery.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_music_hnswave_co__a" {
  name    = "music.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_netai_hnswave_co__a" {
  name    = "netai.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_php_hnswave_co__a" {
  name    = "php.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_quetube_hnswave_co__a" {
  name    = "quetube.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_resume_hnswave_co__a" {
  name    = "resume.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_record" "_hostedzone_z108gqgbxs4jsx_youtube_hnswave_co__a" {
  name    = "youtube.hnswave.co"
  records = ["45.55.167.67"]
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z108gqgbxs4jsx.id
}

resource "aws_route53_zone" "_hostedzone_z108gqgbxs4jsx" {
  name = "hnswave.co"
}

