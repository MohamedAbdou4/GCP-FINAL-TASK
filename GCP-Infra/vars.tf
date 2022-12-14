variable "region" {
  type = string
}

variable "python-app-managment-subnet-ip" {
  type = string
}

variable "python-app-restricted-subnet-ip" {
  type = string
}

variable "gke-master-ip" {
  type = string
}

variable "image-id" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
