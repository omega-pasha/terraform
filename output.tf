output "internal_ip_address_vmtest" {
  value = yandex_compute_instance.vmtest.network_interface.0.ip_address
}

output "external_ip_address_vmtest" {
  value = yandex_compute_instance.vmtest.network_interface.0.nat_ip_address
}
