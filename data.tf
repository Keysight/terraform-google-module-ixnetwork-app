data "google_compute_subnetwork" "Eth0Subnet" {
	name = local.Eth0SubnetName
}

data "google_compute_network" "Eth0VpcNetwork" {
	name = local.Eth0VpcNetworkName
}

data "google_compute_image" "Image" {
	name = local.MarketplaceImageName
	project = local.MarketplaceImageProjectId
}