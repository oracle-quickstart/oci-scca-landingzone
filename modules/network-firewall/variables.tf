# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment containing the Network Firewall."
}

variable "network_firewall_name" {
  type        = string
  description = "The OCI Network Firewall Name"
}

variable "network_firewall_subnet_id" {
  type        = string
  description = "The OCID of the subnet associated with the Network Firewall."
}

variable "network_firewall_policy_name" {
  type        = string
  description = "The name of network firewall policy"
}

variable "ip_address_lists" {
  type        = map(any)
  description = "The list of ip address"
}

variable "security_rules" {
  type        = map(any)
  description = "The list of security rules"
}
