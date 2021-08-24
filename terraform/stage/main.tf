provider "yandex" {
  #  token     = "AQAAAAAAq3znAATuwdI1L5efGkNgnowvh50i55c"
  #  cloud_id  = "b1g19ardnrl1r9c1pa8q"
  #  folder_id = "b1gd4kr6ve971563u1a6"
  #  zone      = "ru-central1-a"

  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}
