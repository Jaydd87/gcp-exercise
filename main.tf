terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project     = "project-jude"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = file("project-jude-7f5c91d604b2.json")
}

locals {
  ebuisness_folder_id = "folders/180240155911"  
}

resource "google_folder" "teams" {
  for_each = toset([
    "hub",
    "ops",
    "search",
    "ordermanagement",
    "businessintelligence",
    "supplymanagement",
    "productcreation",
    "integration",
    "omnichannel",
    "consumerapp",
    "customerselfservice",
    "productpresentation",
    "productinformation",
    "dropshipment"
  ])

  display_name = each.key
  parent       = local.ebuisness_folder_id
}