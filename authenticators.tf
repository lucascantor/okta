# ------------------------------------------------------------------------------------------
# All authenticators (referred to as factors before OIE)

resource "okta_authenticator" "okta_verify" {
  name = "Okta Verify"
  key  = "okta_verify"
  settings = jsonencode(
    {
      "compliance" : {
        "fips" : "OPTIONAL"
      },
      "channelBinding" : {
        "style" : "NUMBER_CHALLENGE",
        "required" : "HIGH_RISK_ONLY"
      },
      "userVerification" : "REQUIRED",
    }
  )
  status = "ACTIVE"
}

resource "okta_authenticator" "okta_password" {
  name   = "Password"
  key    = "okta_password"
  status = "ACTIVE"
}

resource "okta_authenticator" "okta_email" {
  name = "Email"
  key  = "okta_email"
  settings = jsonencode(
    {
      "allowedFor" : "recovery",
      "tokenLifetimeInMinutes" : 5
    }
  )
  status = "ACTIVE"
}
