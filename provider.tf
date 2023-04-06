terraform {
  #required_version = ">1.3.6"
  required_providers {
    google      = {
      source  = "hashicorp/google"
      version = "4.60.1"
    }
  }
  backend "gcs" {
    bucket  = "fer-huware-terraform"
    prefix  = "terraform/state/prd/IAM"
  }
}


provider "local" {}

provider "google" {
    credentials = "../../chiavi/fer_bi_prod.json"
    #impersonate_service_account = "sa-huware-terraform@fer-ssbi-core-prod-prj.iam.gserviceaccount.com"
}
