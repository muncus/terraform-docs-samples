# [START cloud_sql_mysql_instance_backup_location]
resource "google_sql_database_instance" "default" {
  name             = "mysql-instance-with-backup-location"
  region           = "asia-northeast1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
    backup_configuration {
      enabled                        = true
      location                       = "asia-northeast1"
    }
  }
  deletion_protection = false # set to true to prevent destruction of the resource
}
# [END cloud_sql_mysql_instance_backup_location]
