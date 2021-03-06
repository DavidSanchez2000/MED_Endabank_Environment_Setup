/******************************************
	Network VPC configuration
 *****************************************/

resource "google_compute_network" "vpc_network"{
    project = var.project_id
    name = var.network_name
    auto_create_subnetworks = var.auto_create_subnetworks
    delete_default_routes_on_create = var.delete_default_routes_on_create
    description = var.description
  
}