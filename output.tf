output "Eth0PublicIpAddress" {
	description = "Public ip address resource associated with the first network interface"
	value = {
		"address" : google_compute_address.Eth0PublicIpAddress.address
		"address_type" : google_compute_address.Eth0PublicIpAddress.address_type
	}
}

output "Image" {
	description = "Image resource associated with the virtual machine"
	value = {
		"family" : data.google_compute_image.Image.family
		"name" : data.google_compute_image.Image.name
		"project" : data.google_compute_image.Image.project
	}
}

output "Instance" {
	description = "Instance resource associated with the virtual machine"
	value = {
		"architecture" :  google_compute_instance.Instance.boot_disk.0.initialize_params.0.architecture 
		"can_ip_forward" : google_compute_instance.Instance.can_ip_forward
		"cpu_platform" : google_compute_instance.Instance.cpu_platform
		"current_status" : google_compute_instance.Instance.current_status
		"instance_id" : google_compute_instance.Instance.instance_id
		"machine_type" : google_compute_instance.Instance.machine_type
		"name" : google_compute_instance.Instance.name
		"network_ip" : google_compute_instance.Instance.network_interface.0.network_ip
		"project" : google_compute_instance.Instance.project
		"zone" : google_compute_instance.Instance.zone
	}
}
