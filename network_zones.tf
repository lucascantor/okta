resource "okta_network_zone" "blocked_locations" {
  name     = "Blocked - Locations"
  type     = "DYNAMIC"
  usage    = "BLOCKLIST"
  gateways = []
  proxies  = []
  dynamic_locations = [
    "CU",    #Cuba
    "IR",    #Iran, Islamic Republic of
    "KP",    #Korea, Democratic People's Republic of
    "SY",    #Syrian Arab Republic
    "UA-43", #Ukraine, Respublika Krym
  ]
}

resource "okta_network_zone" "blocked_tor" {
  name               = "Blocked - Tor"
  type               = "DYNAMIC"
  usage              = "BLOCKLIST"
  dynamic_proxy_type = "TorAnonymizer"
  gateways           = []
  proxies            = []
  dynamic_locations  = []
}
