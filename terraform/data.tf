data "openstack_compute_flavor_v2" "compute_flavor_tiny" {
  name = "standard.tiny"
}
data "openstack_images_image_v2" "centos_7" {
    name = "CentOS-7"
    visibility = "public"
}