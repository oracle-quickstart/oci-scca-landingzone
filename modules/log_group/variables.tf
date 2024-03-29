# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

variable "compartment_id" {
  type        = string
  description = " The OCID of the compartment that the resource belongs to."
}

variable "display_name" {
  type        = string
  description = "The display name of log group"
}

variable "description" {
  type        = string
  description = "Description for log group"
}