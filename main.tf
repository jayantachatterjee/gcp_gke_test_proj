module "vm" {
  source = "./module/vm"
  name = var.name
}

module "vpc" {
  source = "./module/vpc"
  vpc_name = var.vpc_name
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "gke" {
  source = "./module/gke"
  gke_name = var.gke_name
  region = var.region
  network = module.vpc.network_id
  subnetwork = module.vpc.private_subnet_id
  depends_on = [ module.vpc ]
}