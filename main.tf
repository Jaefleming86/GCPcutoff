provider "google" {
    credentials =  file("/Users/joshua/Desktop/GCPcutoff/jae-fleming-adfc3e3b9a68.json")
    project     = "jae-fleming"
    region      = "West US"
}

resource "google_storage_bucket" "jaebucket1986" {
    name     = "jaebucket1986"
    location = "US"
    storage_class = "standard"
    force_destroy = true

    versioning {
        enabled = false
    }

}
resource "google_storage_bucket_object" "object" {
  name   = "index.html"
  bucket = google_storage_bucket.jaebucket1986.name
source = "/Users/joshua/Desktop/GCPcutoff/index.html"
}