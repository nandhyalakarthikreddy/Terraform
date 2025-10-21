variable "instances" {
   default = ["mongodb","redis"]
  # default = {
  #   mongodb = "t3.micro"
  #   redis = "t3.micro"
  #   mysql = "t3.small"
  # }
}

variable "zone_id" {
  default = "Z10293072SWH3UIBP9LH5"
}

variable "domain_name" {
    default = "nkrdev.space"
}