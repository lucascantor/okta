# ------------------------------------------------------------------------------------------
# Okta Threat Insight settings for the entire org

resource "okta_threat_insight_settings" "threat_insight" {
  action = "block"
}
