provider "gcp" {
  credentials = "${file("credentials.json")}"
  project     = "${var.project_id}"
  region      = "${var.region-gcp}"
}


provider "aws" {
  region = "${var.region-aws}"
  profile = "${var.profile}"
}
