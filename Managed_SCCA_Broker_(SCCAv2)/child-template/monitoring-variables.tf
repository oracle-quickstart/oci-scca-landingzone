# ###################################################################################################### #
# Copyright (c) 2024 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

variable "vdms_critical_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for VDMS Critical notifications."
  validation {
    condition = length(
      [for e in var.vdms_critical_topic_endpoints :
      e if length(regexall("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", e)) > 0]
    ) == length(var.vdms_critical_topic_endpoints)
    error_message = "Validation failed vdms_critical_topic_endpoints: invalid email address."
  }
}

variable "vdms_warning_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for VDMS Warning notifications."
  validation {
    condition = length(
      [for e in var.vdms_warning_topic_endpoints :
      e if length(regexall("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", e)) > 0]
    ) == length(var.vdms_warning_topic_endpoints)
    error_message = "Validation failed vdms_warning_topic_endpoints: invalid email address."
  }
}

variable "vdss_critical_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for VDSS Critical notifications."
  validation {
    condition = length(
      [for e in var.vdss_critical_topic_endpoints :
      e if length(regexall("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", e)) > 0]
    ) == length(var.vdss_critical_topic_endpoints)
    error_message = "Validation failed vdss_critical_topic_endpoints: invalid email address."
  }
}

variable "vdss_warning_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for VDSS Warning notifications."
  validation {
    condition = length(
      [for e in var.vdss_warning_topic_endpoints :
      e if length(regexall("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", e)) > 0]
    ) == length(var.vdss_warning_topic_endpoints)
    error_message = "Validation failed vdss_warning_topic_endpoints: invalid email address."
  }
}

variable "enable_vdss_warning_alarm" {
  type        = bool
  default     = false
  description = "Enable warning alarms in VDSS compartment"
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_vdss_warning_alarm))
    error_message = "The enable_vdss_warning_alarm boolean_variable must be either true or false."
  }
}

variable "enable_vdss_critical_alarm" {
  type        = bool
  default     = false
  description = "Enable critical alarms in VDSS compartment"
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_vdss_critical_alarm))
    error_message = "The enable_vdss_critical_alarm boolean_variable must be either true or false."
  }
}

variable "enable_vdms_warning_alarm" {
  type        = bool
  default     = false
  description = "Enable warning alarms in VDMS compartment"
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_vdms_warning_alarm))
    error_message = "The enable_vdms_warning_alarm boolean_variable must be either true or false."
  }
}

variable "enable_vdms_critical_alarm" {
  type        = bool
  default     = false
  description = "Enable critical alarms in VDMS compartment"
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_vdms_critical_alarm))
    error_message = "The enable_vdms_critical_alarm boolean_variable must be either true or false."
  }
}

variable "onboard_log_analytics" {
  type        = bool
  default     = false
  description = "Set to true ONLY if your tenancy has NOT been onboarded onto log analytics (fails otherwise). Verify by visiting log analytics in the console."
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.onboard_log_analytics))
    error_message = "The onboard_log_analytics boolean_variable must be either true or false."
  }
}
