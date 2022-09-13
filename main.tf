resource "yandex_compute_instance" "vmtest" {
  name                      = "vmtest"
  zone                      = "ru-central1-a"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.ubuntu20
      type     = "network-nvme"
      size     = "5"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.default.id
    nat       = true
  }

  metadata = {
     user-data = "${file("./meta.txt")}"
  }
}
