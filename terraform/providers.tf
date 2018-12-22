variable "gcp_region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

provider "google" {
  project = "maxprettyjohns"
  region  = "us-central1"
  zone    = "us-central1-c"
}
