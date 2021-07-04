resource "digitalocean_app" "golang-sample" {
  spec {
    name   = "golang-sample"
    region = "ams"

    service {
      name             = "go-service"
      environment_slug = "go"
      instance_count   = 1
      # https://www.digitalocean.com/community/questions/app-platform-instance_size_slug-options
      instance_size_slug = "basic-xxs"

      git {
        repo_clone_url = "https://github.com/digitalocean/sample-golang.git"
        branch         = "main"
      }
    }
  }
}