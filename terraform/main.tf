# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.user_name
  password    = var.password
  auth_url    = var.auth_url
  tenant_id = var.tenant_id
  version = "~> 1.28"
  region      = var.region
  project_domain_name = var.project_domain_name

  endpoint_overrides = {
      "object-store" = "https://a3s.fi:443/swift/v1/AUTH_e64fd75c220a48a5b49232c7c400d5b5"
      "identity" = "https://pouta.csc.fi:5001/v3"
      "volumev3" = "https://pouta.csc.fi:8780/v3/e64fd75c220a48a5b49232c7c400d5b5"
      "volumev2" = "https://pouta.csc.fi:8780/v2/e64fd75c220a48a5b49232c7c400d5b5"
  }
}

resource "openstack_networking_floatingip_v2" "floating_ip_1" {
  pool = "public"
}


resource "openstack_compute_instance_v2" "jump_host" {
    name = "jump_host"
    image_id = data.openstack_images_image_v2.centos_7.id
    flavor_id = data.openstack_compute_flavor_v2.compute_flavor_tiny.id
    key_pair = "default_keypair"
    security_groups = ["default"]
    
}
resource "openstack_compute_floatingip_associate_v2" "jump_host" {
    floating_ip = openstack_networking_floatingip_v2.floating_ip_1.address
    instance_id = openstack_compute_instance_v2.jump_host.id

}

output "public-ip" {
    value = openstack_networking_floatingip_v2.floating_ip_1.address
}

