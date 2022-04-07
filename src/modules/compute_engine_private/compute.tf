resource "google_compute_instance" "default" {
    name = var.instance_name
    zone = var. instance_zone
    machine_type = var.instace_type
    allow_stopping_for_update = var.allow_stopping_for_update
    boot_disk {
      initialize_params {
          image = var.instance_image
      }
    }
    #tags = ["${concat(list("${var.name}-ssh", "${var.name}"), var.node_tags)}"]
     network_interface {
        subnetwork = var.subnetwork 
    }

}