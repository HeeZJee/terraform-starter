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

### Input Variables

    variable "aws_region" {
        type = string
        description = "Region to use for AWS resources"
        default = "us-east-1"
        sensitive = false    
    }

#### Input Variable Reference

    var.aws_region

### Local Variables

    locals {
        instance_prefix = "globo"
        common_tags = {
            company = "HeeZJee"
            project = var.project
            billing = var.billing
        }
    }

#### Local Variable Reference

    local.instance_prefix
    local.common_tags.company

## Data Types

1. *Primitive*: string, number, boolean
2. *Collection*: list, set, map
3. *Structural*: tuple, object
