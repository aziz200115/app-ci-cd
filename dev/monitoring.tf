resource "google_monitoring_uptime_check_config" "dev-https" {
  display_name = "https://dev-artemis.shekerbekov.com"
  timeout      = "60s"

  http_check {
    path         = "/"
    port         = "443"
    use_ssl      = true
    validate_ssl = true
  }

  monitored_resource {
    type = "uptime_url"
    labels = {
      project_id = "terraform-project-aziz-423316"
      host       = "dev-artemis.shekerbekov.com"
    }
  }
}
