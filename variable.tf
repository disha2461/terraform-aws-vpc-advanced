variable "cidr_block"{

}

variable "enable_dns_hostnames" {
    default = true
}

variable "enable_dns_support"{
    default = true
}
variable "project_name"{

}

variable "common_tags"{
    default = {}
}

variable "vpc_tags"{
    default = {}
}

variable "igw_tags"{
    default = {}
}
variable "public_subnet_cidr"{
    type = list
    validation {
        condition = length(var.public_subnet_cidr) == 2
        error_message = "Please provide 2 public subnet CIDR"
    }
}

variable "private_subnet_cidr"{
    type = list
    validation {
        condition = length(var.private_subnet_cidr) == 2
        error_message = "Please provide 2 private subnet CIDR"
    }
}
variable "database_subnet_cidr"{
    type = list
    validation {
        condition = length(var.database_subnet_cidr) == 2
        error_message = "Please provide 2 database subnet CIDR"
    }
}
variable "nat_gateway_tags"{
    default = {}
}
variable "public_route_table_tags"{
    default = {}
}
variable "private_route_table_tags"{
    default = {}
}
variable "database_route_table_tags"{
    default = {}
}
variable "db_subnet_group_tags"{
    default = {}
}