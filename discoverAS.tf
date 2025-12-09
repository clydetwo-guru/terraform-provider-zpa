# This will help you discover all existing app segments
data "zpa_application_segment" "discover" {
  for_each = toset([
    # List your app segment names here, or use the script below
  ])
  name = each.key
}

output "app_segment_ids" {
  value = {
    for name, segment in data.zpa_application_segment.discover :
    name => segment.id
  }
}
