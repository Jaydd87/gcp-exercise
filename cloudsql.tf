resource "google_sql_database_instance" "mysql_instance" {
  name             = "my-mysql-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name  = "public-access"
        value = "0.0.0.0/0"
      }
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "my_database" {
  name     = "mydb"
  instance = google_sql_database_instance.mysql_instance.name
}

resource "google_sql_user" "default" {
  name     = "myuser"
  instance = google_sql_database_instance.mysql_instance.name
  password = "YourStrongPassword123!"  # Secure this for real usage
}
