#GLOBAL COMMON VARIABLES
variable "location" {
    type = string
    description = "The location for the resources. This will be used for all resources"
    default = "australiasoutheast"
}

variable "subscriptionid" {
    type=string
    default = "e86103bf-c95b-4ca8-a88a-234a0d6c2bb4"
}

variable "resource_group_name" {
    type = string
    description = "Please provide name of the resource group for the new timesheet test environment"
    default = "rg-mp-terraform-1"

    # validation {
    #     # regex(...) fails if it cannot find a match
    #     condition     = can(regex("^timesheet-test-rg-", var.timesheet_test_rg_name))
    #     error_message = "The resource group must be valid starting with 'timesheet-test-rg-'."
    # }
}


