# Terrafrom - Getting Started

## Terraform Object Types

1. Providers
2. Resources
3. Data Sources

## General Block Syntax

### Resource

    resource "aws_instance" "web_server" {
        name = "web-server"
        ebs_volume {
            size = 40
        }
    }

### Provider

    provide "aws" {
        access_key = ""
        secret_key = ""
        region = "us-east-1"
    }

### Data

    data "aws_ssm_parameter" "ami" {
        name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
    }

### Object Reference

    aws_instance.web_server.name
