variable "instances" {
  default = ["mongodb","redis","catalogue","mysql","rabbitmq"]
}

variable "zone_id" {
  default = "Z10293072SWH3UIBP9LH5"
}

variable "domain_name" {
    default = "nkrdev.space"
}