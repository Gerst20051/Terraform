resource "aws_instance" "example" {
  ami                    = "ami-0f69dd1d0d03ad669"
  instance_type          = "t4g.nano"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p ${var.server_port} &
              EOF

  user_data_replace_on_change = true

  tags = {
    Name = "terraform-example"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.route53_zone_id
  name    = "exampleinstance.hnswave.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.example.public_ip]
}

variable "route53_zone_id" {
  description = "The ID of the Route 53 hosted zone created outside of terraform"
  default     = "Z108GQGBXS4JSX"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}
