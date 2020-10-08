terraform {
  backend "remote" {
    organization = "Wolf"

    workspaces {
      name = "buildit"
    }
  }
}
