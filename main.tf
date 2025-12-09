terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "~> 3.0"
    }
  }
}

provider "zpa" {
  # Credentials from variable set
}
