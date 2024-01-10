provider "google" {
  project  = var.project_id
  region = "europe-west10"
}

module "vpc" {
    source = "./modules/vpc"
}

module "gke" {
    source = "./modules/gke"
    project_id = var.project_id
}