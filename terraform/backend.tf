terraform {
  cloud {
    organization = "LINKHEALTH"

    workspaces {
      name = "tf-devops-poc"
    }
  }
}
